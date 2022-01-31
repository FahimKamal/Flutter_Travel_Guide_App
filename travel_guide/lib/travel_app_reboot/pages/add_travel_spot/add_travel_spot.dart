import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:travel_guide/travel_app_reboot/constants.dart';
import 'package:travel_guide/travel_app_reboot/pages/add_travel_spot/components/submit_button.dart';
import 'package:travel_guide/travel_app_reboot/pages/components/functions.dart';
import 'package:travel_guide/travel_app_reboot/travel_models/travel_model.dart';
import 'package:travel_guide/travel_app_reboot/widgets/travel_provider.dart';

import 'components/drop_down_menu.dart';
import 'components/image_picker_buttons.dart';
import 'components/image_viewer.dart';
import 'components/text_input_widget.dart';

class AddTravelSpot extends StatefulWidget {
  const AddTravelSpot({Key? key}) : super(key: key);

  @override
  _AddTravelSpotState createState() => _AddTravelSpotState();
}

class _AddTravelSpotState extends State<AddTravelSpot> {

  File? _image;
  final _formKey = GlobalKey<FormState>();
  TravelModel travelModel = TravelModel();
  TextEditingController destinationName = TextEditingController();
  TextEditingController description = TextEditingController();

  String? selectTravelRegion;
  String? selectTravelSpot;


  Future cameraImage() async {
    final picker = ImagePicker();
    final pickFile = await picker.pickImage(
        source: ImageSource.camera, maxHeight: 300, maxWidth: 300);
    setState(() {
      _image = File(pickFile!.path);
    });
  }

  Future galleryImage() async {
    final picker = ImagePicker();
    final pickFile = await picker.pickImage(
        source: ImageSource.gallery, maxHeight: 300, maxWidth: 300);
    setState(() {
      _image = File(pickFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {

    final TravelProvider travelProvider = Provider.of<TravelProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Travel Spot"),
        backgroundColor: mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ListView(
          children: [
            ImageViewer(image: _image),
            ImagePickerButtons(
              image: _image,
              imageFromGalleryFunction: galleryImage,
              imageFromCameraFunction: cameraImage,
              uploadFunction: (){},
              clearFunction: () {
                setState(() {
                  _image = null;
                });
              },
            ),
            const Divider(color: Colors.green),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextInputWidget(
                    controller: destinationName,
                    hint: 'Destination Name',
                  ),
                  DropDownMenu(
                    value: selectTravelRegion,
                    label: 'Select Region',
                    items: dropDownMenuItemGenerator(StaticData.travelRegion),
                    onChanged: (newValue) {
                      setState(() {
                        selectTravelSpot = null;
                        selectTravelRegion = newValue;
                      });
                    },
                  ),
                  DropDownMenu(
                    value: selectTravelSpot,
                    label: 'Select Travel Spot',
                    items: travelSpotSelector(region: selectTravelRegion),
                    onChanged: (newValue) {
                      setState(() {
                        selectTravelSpot = newValue;
                      });
                    },
                  ),
                  TextInputWidget(
                    controller: description,
                    hint: 'Description',
                    maxLines: 3,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  SubmitButton(
                    onTap: () async {
                      if (destinationName.text == '' ||
                          description.text == '') {
                        showMessage(
                            context: context,
                            message: "Please fill out all form.");
                      } else {
                        travelModel.destinationName = destinationName.text;
                        travelModel.travelSpot = selectTravelSpot;
                        travelModel.travelRegion = selectTravelRegion;
                        travelModel.description = description.text;

                        showLoadingDialog(context, 'Submitting information...');

                        await travelProvider.addTravelDestination(
                          context: context,
                          travelModel: travelModel,
                          image: _image!,
                        );

                        setState(() {
                          destinationName.clear();
                          description.clear();
                          selectTravelSpot = null;
                          selectTravelRegion = null;
                          _image = null;
                          showMessage(
                            context: context,
                            message: "Submission Successful.");
                        });
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

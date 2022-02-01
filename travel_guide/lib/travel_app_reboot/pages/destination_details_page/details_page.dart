import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/constants.dart';
import 'package:travel_guide/travel_app_reboot/pages/components/functions.dart';
import 'package:travel_guide/travel_app_reboot/travel_models/travel_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.travelModel}) : super(key: key);

  final TravelModel travelModel;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(widget.travelModel.destinationName!),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 230,
            child: loadImage(imageLink: widget.travelModel.imageLink!),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding / 2),
                child: Text(
                  widget.travelModel.destinationName!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              // Destination description
              Padding(
                padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                    bottom: defaultPadding),
                child: Text(
                  widget.travelModel.description!,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

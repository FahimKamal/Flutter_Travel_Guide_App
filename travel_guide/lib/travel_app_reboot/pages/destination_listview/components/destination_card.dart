import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/pages/destination_details_page/details_page.dart';
import 'package:travel_guide/travel_app_reboot/travel_models/travel_model.dart';

import '../../../constants.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    Key? key,
    required this.travelModel,
  }) : super(key: key);

  final TravelModel travelModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(travelModel: travelModel)));
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
          bottom: defaultPadding,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(defaultPadding / 2),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 5, // changes position of shadow
              ),
            ],
          ),
          height: 330,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(defaultPadding / 2),
                  topLeft: Radius.circular(defaultPadding / 2),
                ),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 200,
                  child: Image.asset(
                    travelModel.imageLink!,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),

              // Destination name
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding / 2),
                child: Text(
                  travelModel.destinationName!,
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
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding / 2),
                child: Text(
                  travelModel.description!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

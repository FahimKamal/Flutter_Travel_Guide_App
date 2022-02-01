import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_guide/travel_app_reboot/constants.dart';
import 'package:travel_guide/travel_app_reboot/widgets/travel_provider.dart';

import 'components/destination_card.dart';

class DestinationListViewPage extends StatefulWidget {
  const DestinationListViewPage({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  _DestinationListViewPageState createState() =>
      _DestinationListViewPageState();
}

class _DestinationListViewPageState extends State<DestinationListViewPage> {
  int counter = 0;
  List data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.title == "জনপ্রিয় স্থান") {
      data = StaticData.demoDestinations;
    }
  }

  _customInitState(TravelProvider travelProvider, BuildContext context) {
    setState(() {
      counter++;
      travelProvider.getTravelDestinationList(
          context: context, travelSpot: widget.title);
    });
  }

  @override
  Widget build(BuildContext context) {
    final TravelProvider travelProvider = Provider.of<TravelProvider>(context);

    if (counter == 0 && widget.title != "জনপ্রিয় স্থান") {
      _customInitState(travelProvider, context);
      data = travelProvider.travelDestinationList;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: selectAppbarTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: defaultPadding),
        child: data.isEmpty
            ? Opacity(
                opacity: 0.2,
                child: Container(
                  alignment: Alignment.center,
                  height: 300,
                  child: Image.asset(
                    'images/box.png',
                  ),
                ),
              )
            : ListView(
                children: data
                    .map((element) => DestinationCard(
                          travelModel: element,
                        ))
                    .toList()),
      ),
    );
  }

  Text selectAppbarTitle() {
    if (widget.title == "জনপ্রিয় স্থান") {
      return Text(widget.title);
    }
    return Text("Travel Destinations in " + widget.title);
  }
}

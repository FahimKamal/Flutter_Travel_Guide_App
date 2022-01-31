import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/constants.dart';

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

  List data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = StaticData.demoDestinations;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Travel Destinations in " + widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: defaultPadding),
        child: ListView(
            children: data
                .map((element) => DestinationCard(travelModel: element,))
                .toList()),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/constants.dart';
import 'package:travel_guide/travel_app_reboot/pages/add_travel_spot/add_travel_spot.dart';
import 'package:travel_guide/travel_app_reboot/pages/destination_listview/destination_listview_page.dart';

class RegionPage extends StatefulWidget {
  const RegionPage({Key? key, this.appBarTitle = 'Region Page'})
      : super(key: key);

  final String appBarTitle;

  @override
  _RegionPageState createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> {
  List data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.appBarTitle == "বাংলাদেশ ভ্রমণ") {
      data = StaticData.bdDistrict;
    } else if (widget.appBarTitle == "বিদেশ ভ্রমণ") {
      data = StaticData.allCountries;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
        backgroundColor: mainColor,
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddTravelSpot()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Padding _body() {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
        ),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DestinationListViewPage(title: data[index])));
            },
            child: Card(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(defaultPadding / 2),
                  child: Text(
                    data[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

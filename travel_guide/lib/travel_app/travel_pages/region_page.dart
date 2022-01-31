import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app/travel_data/travel_data.dart';
import 'package:travel_guide/travel_app/travel_pages/travel_spot.dart';
import 'package:travel_guide/travel_app/widgets/appbar_design.dart';

class RegionPage extends StatefulWidget {

  int? index;
  String? region;

  RegionPage({Key? key, this.index, this.region}) : super(key: key);

  @override
  _RegionPageState createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> {

  List<String>? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.index == 0){
      data = bdTravelSpots.keys.toList();
    }
    else if(widget.index == 1){
      data = worldTravelSpots.keys.toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign('${widget.region}'),
      body: _body(),
    );
  }

  Widget _body(){
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 50,
        ),
        itemCount: data?.length,
        itemBuilder: (context, index){
          return CustomCard('${data![index]}');
        }
      ),
    );
  }

  Widget CustomCard(String text){
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => TravelSpot(index: widget.index, region: text,) ));
        },
        child: Container(
            padding: EdgeInsets.all(8),
            child: Text(text)
        ),
      ),
    );
  }
}

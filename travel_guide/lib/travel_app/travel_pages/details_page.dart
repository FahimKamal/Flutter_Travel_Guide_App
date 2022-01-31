import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app/travel_models/travel_model.dart';
import 'package:travel_guide/travel_app/widgets/appbar_design.dart';

class DetailsPage extends StatefulWidget {
  DestinationModel? data;
  DetailsPage({Key? key, this.data}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign("Details"),
      body: _body(),
    );
  }

  Widget _body(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            '${widget.data?.imgurl}',
            fit: BoxFit.cover,
            width: double.maxFinite,
            height: 200,
          ),

          Text('${widget.data?.destinationName}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text('${widget.data?.description}'),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/travel_models/travel_model.dart';

const defaultPadding = 20.0;

const mainColor = Colors.green;
final secondaryColor = Colors.grey[200];

String demoText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";


class StaticData{
  static List mainMenuItems = [
    ["বাংলাদেশ ভ্রমণ", Icons.my_location_sharp],
    ["বিদেশ ভ্রমণ", Icons.language],
    ["ভ্রমণ ব্লগ", Icons.paste],
    ["জনপ্রিয় স্থান", Icons.stars],
    ["ভিডিও", Icons.ondemand_video],
    ["সংরক্ষিত তথ্য", Icons.save],
  ];

  static const List<String> travelRegion = ['Travel Bangladesh', 'Travel World'];

  static const List<String> allCountries = [
    'Bangladesh', 'India', 'Pakistan', 'Bhutan', 'Nepal', 'Sri lanka',
    'Australia', 'USA', 'Canada', 'China', 'Japan',
  ];

  static const List<String> bdDistrict = [
    'Dhaka', 'Bogura', 'Kuistia', 'Khulna', 'Gazipur', 'Magura',
    'Mymansinho', 'Silot', 'Dinajpur'
  ];

  static List<TravelModel> demoDestinations = [
    TravelModel(destinationName: "Bangladesh",imageLink: 'images/Bangladesh.png',description: demoText,),
    TravelModel(destinationName: "India",imageLink: 'images/Bangladesh.png',description: demoText,),
    TravelModel(destinationName: "USA",imageLink: 'images/Bangladesh.png',description: demoText,),
    TravelModel(destinationName: "Bangladesh",imageLink: 'images/Bangladesh.png',description: demoText,),
    TravelModel(destinationName: "Bangladesh",imageLink: 'images/Bangladesh.png',description: demoText,),
    TravelModel(destinationName: "Bangladesh",imageLink: 'images/Bangladesh.png',description: demoText,),
  ];

}


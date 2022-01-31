
import 'package:flutter/material.dart';

const defaultPadding = 20.0;

const mainColor = Colors.green;

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
}


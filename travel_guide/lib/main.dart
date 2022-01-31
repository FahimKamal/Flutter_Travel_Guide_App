import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:provider/provider.dart';
import 'package:travel_guide/travel_app_reboot/pages/add_travel_spot/add_travel_spot.dart';
import 'package:travel_guide/travel_app_reboot/pages/homepage/homepage.dart';
import 'package:travel_guide/travel_app_reboot/widgets/travel_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebase_core.Firebase.initializeApp();
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context){ return TravelProvider(); }),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TravelAppHomepage(),
        // home: AddTravelSpot(),
      ),
    );
  }
}

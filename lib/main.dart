import 'package:flutter/material.dart';
import 'package:meus_lugares/screens/place_form_screen.dart';
import 'package:meus_lugares/screens/places_list_screen.dart';
import 'package:meus_lugares/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: PlaceListScreen(),
      routes: {AppRoutes.PLACE_FORM: (context) => PlaceFormScreen()},
    );
  }
}

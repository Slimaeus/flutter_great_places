import 'package:flutter/material.dart';
import 'package:flutter_great_places/providers/great_places.dart';
import 'package:flutter_great_places/screens/add_place_screen.dart';
import 'package:flutter_great_places/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: ColorScheme.light(secondary: Colors.amber),
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScren.routeName: (ctx) => AddPlaceScren(),
        },
      ),
    );
  }
}

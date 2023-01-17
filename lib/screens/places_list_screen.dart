import 'package:flutter/material.dart';
import 'package:flutter_great_places/screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScren.routeName);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

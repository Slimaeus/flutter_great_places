import 'package:flutter/material.dart';
import 'package:flutter_great_places/providers/great_places.dart';
import 'package:provider/provider.dart';
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
      body: Consumer<GreatPlaces>(
          child: Center(child: Text('Got no places yet, start adding some!')),
          builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
              ? ch
              : ListView.builder(
                  itemCount: greatPlaces.items.length,
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(greatPlaces.items[i].image),
                    ),
                    title: Text(greatPlaces.items[i].title),
                    onTap: () {},
                  ),
                )),
    );
  }
}

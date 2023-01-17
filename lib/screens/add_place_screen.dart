import 'package:flutter/material.dart';
import 'package:flutter_great_places/widgets/image_input.dart';

class AddPlaceScren extends StatefulWidget {
  static const routeName = '/add-place';
  @override
  _AddPlaceScrenState createState() => _AddPlaceScrenState();
}

class _AddPlaceScrenState extends State<AddPlaceScren> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a New Place'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: _titleController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageInput(),
                  ],
                ),
              ),
            )),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add Place'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            )
          ]),
    );
  }
}

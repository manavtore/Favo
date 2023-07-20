import 'package:favo/Screens/places_details.dart';
import 'package:favo/Widget/places_list.dart';
import 'package:flutter/material.dart';

class Placeslist extends StatelessWidget {
  const Placeslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Places'),
          actions: [
            IconButton.filled(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const AddPlacesScreen()));
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: Placeslist());
  }
}

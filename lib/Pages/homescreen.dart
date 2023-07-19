import 'package:favo/Data/dummy_data.dart';
import 'package:favo/Pages/Add_items.dart';
import 'package:favo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final NameProvider = Provider<String>((ref) {
  return 'Favourite';
});

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> get createState => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
        actions: [
          IconButton.filled(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AddPlaceScreen();
                }));
              },
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(2.0),
          itemCount: Placelist.length,
          itemBuilder: (BuildContext context, int index) {
            final Place = Placelist[index];
            if (Placelist.isEmpty) {
              return Center(
                  child: Text(
                'No places added yet',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ));
            } else {
              return Container(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  title: Text(
                    Place.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
              );
            }
          }),
    );
  }
}

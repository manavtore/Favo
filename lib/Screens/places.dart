import 'package:favo/Providers/userplaces.dart';
import 'package:favo/Screens/add_place.dart';
import 'package:favo/Widget/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Placesscreen extends ConsumerWidget {
  const Placesscreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userplaces = ref.watch(userPlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton.filled(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const AddPlacesScreen()));
              },
              icon: Icon(
                Icons.add,
                color:
                    Theme.of(context).copyWith().colorScheme.primaryContainer,
              ))
        ],
      ),
      body: Placeslist(places: userplaces),
    );
  }
}

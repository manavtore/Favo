import 'package:favo/Data/dummy_data.dart';
import 'package:favo/Data/place.dart';
import 'package:favo/Pages/Add_items.dart';
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
                  return const Additem();
                }));
              },
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
              ))
        ],
      ),
      // body: ListView.builder(
      //     padding: EdgeInsets.all(8.0),
      //     itemCount: Placelist.length,
      //     // itemBuilder: (BuildContext context, int index) {
      //     //   return Container(
      //     //     child: Center(Text(Place(id: id[]index, placename: placename[index]))),
      //     //   );
      //     // }
      //     ),
    );
  }
}

import 'package:flutter/material.dart';

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
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

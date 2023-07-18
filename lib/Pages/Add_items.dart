import 'package:flutter/material.dart';

class Additem extends StatefulWidget {
  const Additem({super.key});

  @override
  State<Additem> get createState => _AdditemState();
}

class _AdditemState extends State<Additem> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add places'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(label: Text('Place')),
                )
              ],
            )),
      ),
    );
  }
}

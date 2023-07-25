import 'package:flutter/material.dart';

class Imageinput extends StatefulWidget {
  const Imageinput({super.key});

  @override
  State<Imageinput> get createState => _ImageinputState();
}

class _ImageinputState extends State<Imageinput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2))),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.camera),
          label: const Text('Take Picture')),
    );
  }
}

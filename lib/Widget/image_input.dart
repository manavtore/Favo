import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Imageinput extends StatefulWidget {
  const Imageinput({super.key, required this.onPickedImage});

  final void Function(File image) onPickedImage;
  @override
  State<Imageinput> get createState => _ImageinputState();
}

class _ImageinputState extends State<Imageinput> {
  File? _selectedimage;

  void Takepicture() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (pickedImage == null) {
      return;
    } else {
      setState(() {
        _selectedimage = File(pickedImage.path);
      });
      widget.onPickedImage(_selectedimage!);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.camera),
        label: const Text('Take Picture'));

    if (_selectedimage != null) {
      content = GestureDetector(
        onTap: Takepicture,
        child: Image.file(
          _selectedimage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2))),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: content,
    );
  }
}

import 'package:favo/Providers/userplaces.dart';
import 'package:favo/Widget/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlacesScreen extends ConsumerStatefulWidget {
  const AddPlacesScreen({super.key});

  @override
  ConsumerState<AddPlacesScreen> get createState => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends ConsumerState<AddPlacesScreen> {
  final _titlecontroler = TextEditingController();

  @override
  void dispose() {
    _titlecontroler.dispose();
    super.dispose();
  }

  void _savePlace() {
    final _enterTitle = _titlecontroler.text;

    if (_enterTitle.isEmpty) {
      return;
    }
    ref.read(userPlacesProvider.notifier).addPlace(
          _enterTitle,
        );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add new place'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: _titlecontroler,
                style: TextStyle(
                  color:
                      Theme.of(context).copyWith().colorScheme.primaryContainer,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Imageinput(),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  onPressed: _savePlace,
                  label: const Text('Add place'))
            ],
          ),
        ));
  }
}

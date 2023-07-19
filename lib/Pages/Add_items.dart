// import 'package:favo/Data/dummy_data.dart';
// import 'package:favo/Data/place.dart';
// import 'package:flutter/material.dart';

// class Additem extends StatefulWidget {
//   const Additem({super.key});

//   @override
//   State<Additem> get createState => _AdditemState();
// }

// void _saveItem(String placen) {
//   Placelist.add(Place(title: placen));
// }

// class _AdditemState extends State<Additem> {
//   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     var isSaved = false;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add places'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//               key: _formkey,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     decoration: const InputDecoration(label: Text('Place')),
//                     validator: (value) {
//                       if (value == null) {
//                         return 'Plz enter a Valid name';
//                       } else {
//                         _saveItem(value);
//                       }
//                     },
//                   ),
//                   const SizedBox(
//                     height: 17,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ElevatedButton.icon(
//                         onPressed: () {
//                           if (isSaved == true) {}
//                         },
//                         icon: const Icon(Icons.add),
//                         label: const Text('Add place')),
//                   )
//                 ],
//               )),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> get createState => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titlecontroler = TextEditingController();
  @override
  void dispose() {
    _titlecontroler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: _titlecontroler,
              style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const AddPlaceScreen()));
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Place'))
          ],
        ),
      ),
    );
  }
}

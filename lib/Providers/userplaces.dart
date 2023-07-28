import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favo/models/places.dart';
import 'dart:io';

class userPlacesNotifier extends StateNotifier<List<Place>> {
  userPlacesNotifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = Place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<userPlacesNotifier, List<Place>>(
        (ref) => userPlacesNotifier());

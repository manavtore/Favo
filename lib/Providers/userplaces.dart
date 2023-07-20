import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favo/models/places.dart';

class userPlacesNotifier extends StateNotifier<List<Place>> {
  userPlacesNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider((ref) => userPlacesNotifier());

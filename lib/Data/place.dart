import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  Place({required this.placename}) : id = uuid.v4();

  final String id;
  final String placename;
}

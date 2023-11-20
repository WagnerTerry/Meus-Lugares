import 'package:flutter/material.dart';
import 'package:meus_lugares/models/place.dart';

class GreatPlaceas with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    //retorna um clone da list
    return [..._items];
  }

  Place itemByIndex(int index) {
    return _items[index];
  }
}

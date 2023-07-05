import 'package:ethio_tour/data/places_data.dart';
import 'package:ethio_tour/models/categorie/category_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'place_controller.g.dart';

@Riverpod(keepAlive: true)
class currentPlace extends _$currentPlace {
  @override
  Place build() {
    return places[0];
  }

  void setCurrentPlace(Place place) {
    state = place;
  }
}

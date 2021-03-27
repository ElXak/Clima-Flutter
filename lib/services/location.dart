import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      // expectsLess10(12);
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

/* a function throwing error in case n > 10
  void expectsLess10(int n) {
    if (n > 10) {
      throw 'n is greater than 10, n should always be less than 10.';
    }
  }
*/
}

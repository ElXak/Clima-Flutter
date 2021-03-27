import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
/* class can be initialized in-line
    WeatherModel weatherModel = WeatherModel();
    var weatherData = weatherModel.getLocationWeather();
*/
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
/*
    String myMargin = '15';
    double myMarginAsDouble;

    try {
      myMarginAsDouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }
*/

    return Scaffold(
      body:
          /*Container(
          // if value of var is null put default 30.0
          // margin: EdgeInsets.all(myMarginAsDouble ?? 30.0),
          ),*/
          Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}

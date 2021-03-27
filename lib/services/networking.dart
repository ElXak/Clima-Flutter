import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

/*
      var temperature = jsonDecode(data)['main']['temp'];
      var condition = jsonDecode(data)['weather'][0]['id'];
      var cityName = jsonDecode(data)['name'];
*/

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

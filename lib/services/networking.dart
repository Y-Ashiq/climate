import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response respons = await http.get(url);
    if (respons.statusCode == 200) {
      String data = respons.body;
      var decode = jsonDecode(data);
      return decode;
    } else {
      print(respons.statusCode);
    }
  }
}

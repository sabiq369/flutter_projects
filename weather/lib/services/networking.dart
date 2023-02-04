import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.url});
  String? url;
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url!));
    int statusCode = response.statusCode;
    String data = response.body;
    if (statusCode == 200) {
      return jsonDecode(data);
    } else {
      print('Status code $statusCode');
    }
  }
}

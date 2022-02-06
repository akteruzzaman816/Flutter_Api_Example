import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiHelper{

  static String baseUrl = "https://randomuser.me/api/?results=20";

  static Future<List<dynamic>> getUserList(String endPoint) async {
    var response = await http.get(Uri.parse(baseUrl+endPoint));
    return jsonDecode(response.body)['results'];

  }


}
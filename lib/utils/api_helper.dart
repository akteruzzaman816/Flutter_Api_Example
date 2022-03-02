import 'dart:convert';
import 'dart:io';

import 'package:flutter_api_example/model/LoginResponse.dart';
import 'package:http/http.dart' as http;
class ApiHelper{

  // static String baseUrl = "https://randomuser.me/api/?results=20";
  static String baseUrl = "https://agent.sbgapidata.com/";

  static Future<List<dynamic>> getUserList(String endPoint) async {
    var response = await http.get(Uri.parse(baseUrl+endPoint));
    return jsonDecode(response.body)['results'];
  }

  static Future<LoginResponse> userLogin(String endPoint,String email,String password) async {
    Map<String, String> requestBody = <String,String>{
      'phone':email,
      'password':password,
      'token':"testToken",
    };
    Map<String, String> headers = {
    "Content-Type": "application/x-www-form-urlencoded"};
    var response = await http.post(Uri.parse(
        baseUrl+endPoint),
      body: requestBody,
        //headers: headers
    );
   // print("data ${jsonDecode(jsonEncode(response.body))}");
    String responseBody = utf8.decoder.convert(response.bodyBytes);
    print("data $responseBody");


    return LoginResponse.fromJson(jsonDecode(responseBody));
  }




}
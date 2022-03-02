import 'package:flutter/material.dart';
import 'package:flutter_api_example/model/LoginResponse.dart';
import 'package:flutter_api_example/utils/api_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String data = "";
  _loadData() async{
    var response = await ApiHelper.userLogin("api/login", "8801843914526", "123456");

    setState(() {
      data = response.message.toString();
    });

  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(data),
      ),
    );
  }
}

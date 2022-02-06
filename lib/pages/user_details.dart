import 'package:flutter/material.dart';
class UserDetailsPage extends StatelessWidget {
  UserDetailsPage({Key? key,required this.fullName,required this.imagePath}) : super(key: key);
  String fullName;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("User Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(imagePath),
            ),
            const SizedBox(height: 10,),
            Text(fullName,
              style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_api_example/pages/user_details.dart';

userListHeaderWidget(String picture,String fullName,String location,BuildContext context){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailsPage(fullName: fullName,imagePath: picture)));
    },
    child: Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      margin: const EdgeInsets.all(20),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(20),
        height: 200,
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(picture),
            ),
            const SizedBox(height: 10,),
            Text(fullName,
              style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
            Text(location,
              style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
          ],
        ),
      ),
    ),
  );
}
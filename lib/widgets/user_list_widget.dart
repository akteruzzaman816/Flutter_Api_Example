import 'package:flutter/material.dart';
import 'package:flutter_api_example/pages/user_details.dart';
userListWidget(String picture,String fullName,String email,BuildContext context){
  return GestureDetector(
      child: GestureDetector(
      onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailsPage(fullName: fullName,imagePath: picture)));
  },
    child: Card(
      margin: const EdgeInsets.all(8),

        child: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(picture),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(fullName,
                    style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                  Text(email,
                    style: const TextStyle(fontSize: 12),),
                ],
              )
            ],
          ),
        ),
    ),
      ),
  );
}
import 'package:flutter/material.dart';
import 'package:mi_card/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(avatarIcon),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: pacifico,
                    ),
                  ),
                  Text(
                    profession,
                    style: TextStyle(
                      fontFamily: sourceSansPro,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 130,
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.5,
                      height: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                    title: Text(
                      phoneNumber,
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 17,
                      ),
                    ),
                  )),
              SizedBox(height: 10),
              Card(
                  color: Colors.white,
                  child: ListTile(

                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      email,
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 17,
                      ),
                    ),
                  )),
            ],
          ),
        )),
      ),
    );
  }
}

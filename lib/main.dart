import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final String phoneNumber = "010-6531-1270";
  final String email = "j.yeongmee@gmail.com";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
              height: 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                  backgroundColor: Colors.black,
                  radius: 100,
                ),
                Text(
                  "jooyeongmee",
                  style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).primaryColorLight,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.phone_android_outlined),
                  title: Text(phoneNumber),
                  tileColor: Theme.of(context).canvasColor,
                ),
                ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text(email),
                  tileColor: Theme.of(context).canvasColor,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

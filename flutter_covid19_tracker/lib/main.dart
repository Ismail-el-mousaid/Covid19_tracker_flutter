import 'package:flutter/material.dart';

import 'screens/Login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: FutureBuilder(
        future: Firebase.initializeApp(),
          builder:(context, snapshot) {
            if(snapshot.hasData)
            return Login();
            else
              return Center(child: Container(width: 100,
                child: FittedBox(
                  fit:BoxFit.contain,

                    child: CircularProgressIndicator()),
              ));
          },
      ));
  }
}

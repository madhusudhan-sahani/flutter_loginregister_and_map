import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_experiment/LoginRegister.dart';
import 'package:flutter_experiment/MyHomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      // home: MyHomePage(title: "appTitle"),
      home: LoginRegister(),
    );
  }
}


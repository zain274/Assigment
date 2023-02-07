import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task/firebase_options.dart';
import 'package:task/screen/Home.dart';
import 'package:task/screen/login.dart';
import 'package:task/screen/menu.dart';
import 'package:task/screen/orderreceived.dart';
import 'package:task/screen/signin.dart';
import 'package:task/screen/splashscreen.dart';


Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
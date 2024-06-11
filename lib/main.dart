import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/freatures/intro/presentation/screen/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     primaryColor: Colors.teal
     
      // const Color(0xFF20b3ae)
     
     
     ,
        useMaterial3: true,
      ),
      home: const IntroScreen()
    );
  }
}

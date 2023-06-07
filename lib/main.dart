import 'package:electroclas/pages/TfliteModel.dart';
import 'package:electroclas/pages/home_page.dart';
import 'package:electroclas/pages/komponen_page.dart';
import 'package:electroclas/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/home-page': (context) => const HomePage(),
          '/komponen-page': (context) =>  const KomponenPage(),
          '/tflite-model': (context) =>  TfliteModel(),

        },
    );
  }
}

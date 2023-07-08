import 'dart:async';

import 'package:electroclas/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreenColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(

                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/start1.png', fit: BoxFit.cover),
                ),
              ),
              const Spacer(),
              Container(

                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/start2.png', fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/ic-app.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

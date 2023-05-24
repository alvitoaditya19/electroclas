import 'package:electroclas/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: Stack(children: [
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/bg-home1.png'),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 70,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/bg-home2.png'),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome, to the electronic component classification application",
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img-komp.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.3),
                                offset: Offset(0, 0),
                                blurRadius: 20,
                                spreadRadius: 4)
                          ],
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hallo",
                            style: greenTextStyle.copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                            onTap: () {
                      Navigator.pushNamed(context, '/komponen-page');

                    },
                      child: Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: kGreenColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.1),
                                offset: Offset(0, 0),
                                blurRadius: 20,
                                spreadRadius: 2)
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 71,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/img-resistor1.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "Komponen",
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                           onTap: () {
                      Navigator.pushNamed(context, '/tflite-model');

                    },
                      child: Container(
                        padding: EdgeInsets.all(14),
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: kGreenColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.1),
                                offset: Offset(0, 0),
                                blurRadius: 20,
                                spreadRadius: 2)
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 71,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/img-barcode.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "Klasifikasi",
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: kGreenColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.1),
                                offset: Offset(0, 0),
                                blurRadius: 20,
                                spreadRadius: 2)
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 71,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/img-resistor2.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "Tentang Aplikasi",
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}

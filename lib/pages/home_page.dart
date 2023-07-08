import 'package:electroclas/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 210,
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
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Selamat Datang\ndi Aplikasi Pengenalan\nKomponen Elektronika",
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          height: 64,
                          width: 64,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/ic-app.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.3),
                                offset: const Offset(0, 0),
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
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/komponen-page');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: kGreenColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.1),
                                offset: const Offset(0, 0),
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
                            const SizedBox(
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
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: kGreenColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.1),
                                offset: const Offset(0, 0),
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
                            const SizedBox(
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
                           onTap: () {
                        Navigator.pushNamed(context, '/about');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: kGreenColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.1),
                                offset: const Offset(0, 0),
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
                            const SizedBox(
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
        ],
      ),
    );
  }
}

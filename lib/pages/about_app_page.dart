import 'package:electroclas/shared/theme.dart';
import 'package:flutter/material.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Spacer(),
                  Container(
                    height: 280,
                    width: 280,
                    margin: EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img-devices.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
              ],
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pengenalan Komponen\nElektronika",
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
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
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
                            "Tentang Aplikasi",
                            style: greenTextStyle.copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Aplikasi pengenalan komponen elektronika merupakan aplikasi yang dapat mengklasifikasikan komponen elektronika berdasarkan citra komponen elektronika yang dimuat dengan menggunakan kamera handphone. Terdapat 15 komponen elektronika yang dapat diklasifikasikan pada aplikasi ini yaitu resistor, kapasitor, induktor, transistor, dioda, LED, LDR, IC, potensiometer, relay, saklar, buzzer, sensor IR, sensor LM35, dan sensor ultrasonik.",
                        style: blackTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign
                            .justify, // Align the text to both left and right edges
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

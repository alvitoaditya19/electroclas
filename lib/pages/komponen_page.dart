import 'package:electroclas/shared/theme.dart';
import 'package:electroclas/widgets/komponen.dart';
import 'package:flutter/material.dart';

class KomponenPage extends StatefulWidget {
  const KomponenPage({Key? key}) : super(key: key);

  @override
  State<KomponenPage> createState() => _KomponenPageState();
}

class _KomponenPageState extends State<KomponenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kGreenColor,
        body: SafeArea(
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
                        "Welcome, to the electronic\ncomponent classification\napplication",
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic-app.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img-barcode.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Klasifikasi",
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: Text(
                    "komponen elektronika",
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Komponen(
                              title: 'Resistor', imgUrl: 'assets/img-kom1.png'),
                          const Komponen(
                              title: 'Kapasitor',
                              imgUrl: 'assets/img-kom2.png'),
                          const Komponen(
                              title: 'Induktor', imgUrl: 'assets/img-kom3.png'),
                          const Komponen(
                              title: 'Dioda', imgUrl: 'assets/img-kom4.png'),
                          const Komponen(
                              title: 'Transistor',
                              imgUrl: 'assets/img-kom5.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Komponen(
                              title: 'Ic', imgUrl: 'assets/img-kom6.png'),
                          const Komponen(
                              title: 'Saklar',
                              imgUrl: 'assets/img-kom7.png'),
                          const Komponen(
                              title: 'Potensiometer', imgUrl: 'assets/img-kom8.png'),
                          const Komponen(
                              title: 'LED', imgUrl: 'assets/img-kom9.png'),
                          const Komponen(
                              title: 'Buzzer',
                              imgUrl: 'assets/img-kom10.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Komponen(
                              title: 'sensor LM35', imgUrl: 'assets/img-kom11.png'),
                          const Komponen(
                              title: 'Relay',
                              imgUrl: 'assets/img-kom12.png'),
                          const Komponen(
                              title: 'sensor IR', imgUrl: 'assets/img-kom13.png'),
                          const Komponen(
                              title: 'LDR', imgUrl: 'assets/img-kom14.png'),
                          const Komponen(
                              title: 'sensor UL',
                              imgUrl: 'assets/img-kom15.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(color: kWhiteColor),
                  child: Column(
                    children: [
                      Text(
                        "Hallo, Saya Gita Destalia\nAplikasi ini digunakan sebagai tugas akhir kuliah\ndan bahan skripsi",
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:electroclas/models/komponen_model.dart';
import 'package:electroclas/shared/theme.dart';
import 'package:electroclas/widgets/komponen.dart';
import 'package:flutter/material.dart';

class KomponenPage extends StatefulWidget {
  final KomponenModel? komponenModel;

  const KomponenPage({Key? key, this.komponenModel}) : super(key: key);

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
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Resistor',
                              imgUrl: 'assets/img-kom1.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Kapasitor',
                              imgUrl: 'assets/img-kom2.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Induktor',
                              imgUrl: 'assets/img-kom3.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Dioda',
                              imgUrl: 'assets/img-kom4.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Transistor',
                              imgUrl: 'assets/img-kom5.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                                            Komponen(
                            komponenModel: KomponenModel(
                              name: 'Ic',
                              imgUrl: 'assets/img-kom6.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Saklar',
                              imgUrl: 'assets/img-kom7.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Potensiometer',
                              imgUrl: 'assets/img-kom8.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'LED',
                              imgUrl: 'assets/img-kom9.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Buzzer',
                              imgUrl: 'assets/img-kom10.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                Komponen(
                            komponenModel: KomponenModel(
                              name: 'sensor LM35',
                              imgUrl: 'assets/img-kom11.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Relay',
                              imgUrl: 'assets/img-kom12.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'sensor IR',
                              imgUrl: 'assets/img-kom13.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'LDR',
                              imgUrl: 'assets/img-kom14.png',
                            ),
                          ),
                          Komponen(
                            komponenModel: KomponenModel(
                              name: 'Sensor UL',
                              imgUrl: 'assets/img-kom15.png',
                            ),
                          ),
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

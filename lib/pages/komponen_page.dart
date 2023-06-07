import 'dart:convert';

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
  List<KomponenModel> processedData = [];
  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    // Mengganti 'data.json' dengan path/file JSON Anda
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/komponen_data.json');
    final jsonData = json.decode(jsonString);

    List<KomponenModel> myModels = [];
    for (var item in jsonData) {
      KomponenModel myModel = KomponenModel(
        name: item['name'],
        imgUrl: item['imgUrl'],
        desc: item['desc'],
      );
      myModels.add(myModel);
    }

    setState(() {
      processedData = myModels;
    });
  }

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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 5; i++)
                            if (i < processedData.length)
                              Komponen(
                                komponenModel: processedData[i],
                              ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 5; i < 10; i++)
                            if (i < processedData.length)
                              Komponen(
                                komponenModel: processedData[i],
                              ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 10; i < 15; i++)
                            if (i < processedData.length)
                              Komponen(
                                komponenModel: processedData[i],
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

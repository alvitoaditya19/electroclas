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
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/komponen_data.json');
    final jsonData = json.decode(jsonString);

    List<KomponenModel> myModels = [];
    for (var item in jsonData) {
      KomponenModel myModel = KomponenModel(
        name: item['name'],
        imgUrl: item['imgUrl'],
        desc: item['desc'],
        imgBan: item['imgBan'],
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
                            "Komponen Elektronika",
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
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.symmetric(horizontal: 18),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.2),
                                offset: const Offset(0, 0),
                                blurRadius: 8,
                                spreadRadius: 4)
                          ],
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
                            height: 10,
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
                            height: 10,
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
                  ],
                ),
              ),
            ),
            
          ],
        ));
  }
}

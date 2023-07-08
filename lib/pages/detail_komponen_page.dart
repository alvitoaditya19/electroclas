import 'package:electroclas/models/komponen_model.dart';
import 'package:electroclas/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailKomponenPage extends StatefulWidget {
  final KomponenModel? komponenModel;
  const DetailKomponenPage({Key? key, this.komponenModel}) : super(key: key);

  @override
  State<DetailKomponenPage> createState() => _DetailKomponenPageState();
}

class _DetailKomponenPageState extends State<DetailKomponenPage> {
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
                            widget.komponenModel!.name!,
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
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.komponenModel!.imgBan!),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        widget.komponenModel!.desc!,
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.justify,
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

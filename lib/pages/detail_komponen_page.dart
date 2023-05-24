import 'package:electroclas/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailKomponenPage extends StatefulWidget {
  const DetailKomponenPage({Key? key}) : super(key: key);

  @override
  State<DetailKomponenPage> createState() => _DetailKomponenPageState();
}

class _DetailKomponenPageState extends State<DetailKomponenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Resistor",
                style: greenTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10,),
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
            ],
          ),
        ));
  }
}

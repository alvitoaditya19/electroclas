import 'package:electroclas/models/komponen_model.dart';
import 'package:electroclas/pages/detail_komponen_page.dart';
import 'package:electroclas/shared/theme.dart';
import 'package:flutter/material.dart';

class Komponen extends StatelessWidget {
  final KomponenModel? komponenModel;

  const Komponen({Key? key, this.komponenModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailKomponenPage(komponenModel: komponenModel,),
          ),
        );
      },
      child: SizedBox(
              width: 50,

        child: Column(
          children: [
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(komponenModel!.imgUrl!),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Center(
              child: Text(
                komponenModel!.name!,
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

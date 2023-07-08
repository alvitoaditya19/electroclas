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
            builder: (context) => DetailKomponenPage(
              komponenModel: komponenModel,
            ),
          ),
        );
      },
      child: Container(
        width: 60,
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: kBackgroundColor2,
                boxShadow: [
                  BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(.25),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0)
                ],
                borderRadius: BorderRadius.circular(2000),
              ),
              child: Padding(
                padding:
                    EdgeInsets.all(8), // Adjust the padding value as needed
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(komponenModel!.imgUrl!),
                    ),
                  ),
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

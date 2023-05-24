import 'package:electroclas/shared/theme.dart';
import 'package:flutter/material.dart';

class Komponen extends StatelessWidget {
  const Komponen({Key? key, this.title, this.imgUrl}) : super(key: key);
  final String? title;
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imgUrl!),
            ),
          ),
        ),
        SizedBox(height: 4,),
        Text(
          title!,
          style: blackTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

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
         appBar: AppBar(
        backgroundColor: kWhiteColor,
          leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: kBlackColor,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
        backgroundColor: kGreenColor2,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 24, top: 10, bottom: 10),
                  
                  width: double.infinity,
                  decoration: BoxDecoration(color: kWhiteColor),
                  child: Text(
                    widget.komponenModel!.name!,
                    style: blackTextStyle.copyWith(
                        fontSize: 20),
                  ),
                ),
        
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                  ),
                  child: Container(
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.komponenModel!.imgBan!),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: double.infinity,
               
                  decoration: BoxDecoration(color: kWhiteColor),),
                Container(
                  height: 20,
                  width: double.infinity,
               
                  decoration: BoxDecoration(color: kWhiteColor),
                  child: Container(
                    height: 20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kGreenColor2,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        )),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kGreenColor2,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                         widget.komponenModel!.desc!,
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

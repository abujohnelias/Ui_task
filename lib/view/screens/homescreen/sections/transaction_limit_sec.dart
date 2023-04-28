import 'package:flutter/material.dart';
// import 'package:flutter_application_3/constants/color_consts/color_const.dart';
// import 'package:flutter_application_3/constants/sixedbox_const/sixedbox_const.dart';
// import 'package:flutter_application_3/constants/txtstyle_const/textstyle_const.dart';

import 'package:progresso/progresso.dart';
import 'package:ui_task/constants/color_const/color_const.dart';
import 'package:ui_task/constants/sixedbox_const/sixedbox_const.dart';
import 'package:ui_task/constants/txtstyle_const/txtstyle_const.dart';

class Transaction_limit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        // height: 150,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConst.borderColor),
          borderRadius: BorderRadius.circular(10),
          color: ColorConst.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(

              // physics: NeverScrollableScrollPhysics(),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Transcation Limit", style: Textstyle_const.headingStyle),
                Sixedbox_const.Transation_limit_size,
                Text(
                    "A free limit up to which you will receive the online payment directly in your bank",
                    style: Textstyle_const.subheadingStyle),
                //Sixedbox_const.Transation_limit_size,
                SizedBox(
                  height: 10,
                ),
                Progresso(
                  progressStrokeCap: StrokeCap.round,
                  backgroundStrokeCap: StrokeCap.round,
                  progress: 0.5,
                  progressStrokeWidth: 6,
                  backgroundStrokeWidth: 6,
                  backgroundColor: ColorConst.borderColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "36,668 left out of Rs.50,000",
                  style: Textstyle_const.normalTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextButton(
                                 style: TextButton.styleFrom(
                    backgroundColor: ColorConst.blue,
                                 ),
                                 onPressed: () {},
                                 child: Text(
                    "Increase limt",
                    style: TextStyle(color: ColorConst.white),
                                 )),
                 )
              ]),
        ),
      ),
    );
  }
}

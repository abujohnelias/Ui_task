import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_task/constants/color_const/color_const.dart';


// import '../../../../constants/color_consts/color_const.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Transactions",
              style: TextStyle(color: ColorConst.black, fontSize: 20)),
              SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 110,
                child: Center(
                    child: Text(
                  "On hold",
                  style: TextStyle(color: ColorConst.textMediumColor),
                )),
                decoration: BoxDecoration(
                    color: ColorConst.borderColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                height: 35,
                width: 110,
                child: Center(
                    child: Text(
                  "Payouts(15)",
                  style: TextStyle(color: ColorConst.white),
                )),
                decoration: BoxDecoration(
                    color: ColorConst.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                height: 35,
                width: 110,
                child: Center(
                    child: Text(
                  "Refunds",
                  style: TextStyle(color: ColorConst.textMediumColor),
                )),
                decoration: BoxDecoration(
                    color: ColorConst.borderColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

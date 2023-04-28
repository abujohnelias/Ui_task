import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_task/constants/color_const/color_const.dart';


class ListExpTile extends StatelessWidget {
  const ListExpTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Default  Method"),
              Row(
                children: [
                  Text(
                    "Online Payments",
                    style: TextStyle(color: ColorConst.textMediumColor),
                  ),
                  Icon(Icons.chevron_right, color: ColorConst.textMediumColor)
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Payment Profile"),
              Row(
                children: [
                  Text(
                    "Bank Account",
                    style: TextStyle(color: ColorConst.textMediumColor),
                  ),
                  Icon(Icons.chevron_right, color: ColorConst.textMediumColor),
                ],
              ),
            ],
          ),
          Divider(
            color: ColorConst.borderColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Payment Overview"),
              Row(
                children: [
                  Text(
                    "Life Time",
                    style: TextStyle(color: ColorConst.textMediumColor),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 167,
                  height: 70,
                  decoration: BoxDecoration(
                      color: ColorConst.orange,
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10,
                          left: 15,
                          child: Text(
                            "AMOUNT ON HOLD",
                            style: TextStyle(color: ColorConst.white),
                          )),
                      Positioned(
                        top: 27,
                        left: 15,
                        child: Text(
                          "₹0",
                          style:
                              TextStyle(fontSize: 23, color: ColorConst.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(width: 3),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 167,
                  height: 70,
                  decoration: BoxDecoration(
                      color: ColorConst.green,
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10,
                          left: 15,
                          child: Text(
                            "AMOUNT RECEIVED",
                            style: TextStyle(color: ColorConst.white),
                          )),
                      Positioned(
                          top: 27,
                          left: 15,
                          child: Text(
                            "₹13,332",
                            style: TextStyle(
                                fontSize: 23, color: ColorConst.white),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

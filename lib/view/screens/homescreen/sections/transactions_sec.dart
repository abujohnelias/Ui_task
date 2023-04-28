import 'package:flutter/material.dart';
import 'package:ui_task/constants/color_const/color_const.dart';
// import '../../../../constants/color_consts/color_const.dart';



class TransactionList extends StatelessWidget {
  List img = [
    "https://assets.ajio.com/medias/sys_master/root/20220901/ARH5/6310ee67f997dd1f8dd3e3fd/-473Wx593H-464918983-blue-MODEL.jpg",
    "https://media.istockphoto.com/id/1163083366/photo/indian-traditional-kurti-with-flower-design-pattern.jpg?b=1&s=170667a&w=0&k=20&c=29rOHQiZyY2oVDU5Nxja6ahm3Y-7yt7_fsAdHcOKVEA=",
    "https://m.media-amazon.com/images/I/717h83InL6L._UL1280_.jpg",
    "https://m.media-amazon.com/images/I/813uPMOnskL.jpg",
    "https://assetscdn1.paytm.com/images/catalog/product/S/ST/STAGADGE-METAL-SHIN108545E49AC0FF/1563558412788_4.jpg",
    "https://www.reliancedigital.in/medias/Samsung-Tab-A7-Lite-Tablets-491996924-i-2-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w3NTUxN3xpbWFnZS9qcGVnfGltYWdlcy9oMDYvaDAzLzk1ODExNjM0NDYzMDIuanBnfGEzODlkZmNlNDc3ZDhiY2ExNGJhZWUxZjVkMjdlMDk4Nzg1NzhkNDIwYzQwNTgxY2YwMzZkMWRiOGFiNTA3NGU",
  ];
  List title = [
    "Order #1688068",
    "Order #1485068",
    "Order #1188068",
    "Order #188898",
    "Order #9688068",
    "Order #7688068"
  ];
  List subtitile = [
    "Jul 12,02:06 PM",
    "May 22,03:15 AM",
    "Aug 02,01:06 PM",
    "Apr 29,12:06 PM",
    "Nov 26,10:06 AM",
    "Dec 12,12:06 AM",
  ];
  List price = ["799", "500", "394.3", "1000", "2001.4", "999.1"];
  List subtitles = [
    "799 deposited to 58860200000138",
    "500 deposited to 58860200000138",
    "394.3 deposited to 58860200000138",
    "1000 deposited to 58860200000138",
    "2001.4 deposited to 58860200000138",
    "999.1 deposited to 58860200000138",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: title.length,
        itemBuilder: (context, index) {
          return CustomContainer(
              img: img[index],
              title: title[index],
              subtitile: subtitile[index],
              price: price[index],
              subtitles: subtitles[index]);
        });
  }
}

class CustomContainer extends StatelessWidget {
  final String img;
  final String title;
  final String subtitile;
  final String price;

  final String subtitles;
  CustomContainer(
      {required this.img,
      required this.title,
      required this.subtitile,
      required this.price,
      required this.subtitles});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: ColorConst.borderColor))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.contain)),
            ),
            title: Text(
              title,
              style: TextStyle(
                  color: ColorConst.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              subtitile,
              style: TextStyle(color: ColorConst.textMediumColor),
            ),
            trailing: SizedBox(
              height: 50,
              width: 85,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("₹${price}",
                        style: TextStyle(
                          color: ColorConst.blue,
                          fontWeight: FontWeight.bold,
                        )),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: ColorConst.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Successful",
                          style: TextStyle(color: ColorConst.textMediumColor),
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Text(
            "₹${subtitles}",
            style: TextStyle(color: ColorConst.black, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

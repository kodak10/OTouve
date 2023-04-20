import 'package:flutter/material.dart';
import 'package:otrouve/utils/color.dart';
import 'package:nb_utils/nb_utils.dart';


// ignore: non_constant_identifier_names
Widget SliderButton({Color? color, String title = '', VoidCallback? onPressed}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.only(left: 16, right: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
          side: BorderSide(color: Colors.transparent),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        onPressed!();
      });
}

Widget dotIndicator({required bool isActive}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 4.0),
    height: isActive ? 10.0 : 8.0,
    width: isActive ? 10.0 : 8.0,
    decoration: BoxDecoration(
      color: isActive ? opPrimaryColor : Colors.grey.withOpacity(0.5),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );
}

Widget SliderPage({required final Size size, required String image, required String title, required String description}) {
  return Column(
    children: <Widget>[
      Container(
        child: Image(
          image: AssetImage(image),
          height: size.width,
          width: size.height,
        ),
      ),
      SizedBox(height: 4),
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(title, textAlign: TextAlign.center, style: boldTextStyle(size: 18)),
        ),
      ),
      SizedBox(height: 15.0),
      Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Text(description, textAlign: TextAlign.center, style: secondaryTextStyle()),
      )
    ],
    crossAxisAlignment: CrossAxisAlignment.start,
  );
}

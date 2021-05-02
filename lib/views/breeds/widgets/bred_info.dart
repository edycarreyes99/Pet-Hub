import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BredInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final double fontSize;
  final FontWeight fontWeight;

  BredInfo({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.subTitle,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.grey[900],
                  size: 18,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            this.subTitle,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: fontSize != null ? fontSize : 16,
              fontWeight: fontWeight != null ? fontWeight : FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}

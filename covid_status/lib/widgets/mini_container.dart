import 'package:flutter/material.dart';
import 'package:covid_status/constants.dart';

class MiniContainer extends StatelessWidget {

  final Color color;
  final String label;
  final String count;

  MiniContainer({@required this.color,this.label,this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(35.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              label,
            style: kMiniContainerTextStyle,
          ),
          Text(
              count,
            style: kMiniContainerTextStyle,
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

import 'constants.dart';

class responsiveContainer extends StatelessWidget {
  responsiveContainer({this.ContainerChild});
  final Widget ContainerChild;

  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      child:  Container(
        child: ContainerChild,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: appColor),
        ),
      ),
      heightPercent: 17.0,
      widthPercent: 100.0,

    );
  }
}
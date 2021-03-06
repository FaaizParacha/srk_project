import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srkproject/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class containerEleements extends StatelessWidget {
  containerEleements({this.label1,this.label3});

  final String label1;
  final String label3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage("assets/design.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(label1,style: TextStyle(
                  color: appColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 20.0
              ),),
              Text("Pengikut (200)",style: TextStyle(
                  color: Colors.blue.shade800
              ),),
              Text(label3,style: TextStyle(
                  color: appColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 20.0
              ),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: OutlineButton.icon(onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                borderSide: BorderSide(
                    color: Colors.pink.shade300
                ),
                icon: FaIcon(FontAwesomeIcons.userCheck,size: 20.0,color: Colors.pink.shade300),
                label: Text("Ikut saya",style: TextStyle(
                    color: Colors.pink.shade300
                ),)),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srkproject/constants.dart';
class containerEleements extends StatelessWidget {
  containerEleements({this.label1,this.label3});

  final String label1;
  final String label3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage("assets/design.png"),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50.0),
            child: Column(
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
          ),
          OutlineButton.icon(onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              borderSide: BorderSide(
                  color: Colors.pink.shade300
              ),
              icon: Icon(Icons.location_on,color: Colors.pink.shade300),
              label: Text("Ikut saya",style: TextStyle(
                  color: Colors.pink.shade300
              ),)),

        ],
      ),
    );
  }
}
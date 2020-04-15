import 'package:flutter/material.dart';

import 'constants.dart';

class searchBarWidget extends StatefulWidget {
  @override
  _searchBarWidgetState createState() => _searchBarWidgetState();
}

class _searchBarWidgetState extends State<searchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                height: 40.0,
                width: 160.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: appColor)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.search,color: appColor,),
                      Text("Carian",style: TextStyle(
                          color: appColor
                      ),),
                      SizedBox(
                        child: sizedBox,
                      ),
                      Icon(Icons.keyboard_voice,color: appColor,)
                    ],
                  ),
                ),
              ),
            )
        ),
        Icon(Icons.sort,color: appColor,size: 40.0,),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:srkproject/responsiveContainer.dart';
import 'package:srkproject/searchbarWidget.dart';

import 'UIProject.dart';
import 'constants.dart';
import 'containerElements.dart';

class Design3 extends StatefulWidget {
  @override
  _Design3State createState() => _Design3State();
}

class _Design3State extends State<Design3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title: Text("Mengikuti",
            style: Appbarstyle,),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: searchBarWidget(),
              ),
              responsiveContainer(
                ContainerChild: containerEleements(
                    label1: "Sean",
                  label3: "Notiz (140)",
                ),
              ),
              responsiveContainer(
                ContainerChild: containerEleements(
                  label1: "MekaFox",
                  label3: "Notiz (20)",
                ),
              ),
              responsiveContainer(ContainerChild: containerEleements(
                label1: "Mzunicorn",
                label3: "Notiz (60)",
              ),),
              responsiveContainer(ContainerChild: containerEleements(
                label1: "Azyl",
                label3: "Notiz (20)",
              ),),
              responsiveContainer(ContainerChild: containerEleements(
                label1: "MekaFox",
                label3: "Notiz (20)",
              ),),
              responsiveContainer(ContainerChild: containerEleements(
                label1: "Mzunicorn",
                label3: "Notiz (140)",
              ),),
              responsiveContainer(ContainerChild: containerEleements(
                label1: "Azyl",
                label3: "Notiz (140)",
              ),),
            ],
          ),
        )
      ),
    );
  }
}






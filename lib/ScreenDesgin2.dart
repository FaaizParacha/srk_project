import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:chewie/chewie.dart';
import 'package:srkproject/constants.dart';
import 'package:video_player/video_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ScreenDesign2 extends StatefulWidget {
  @override
  _ScreenDesign2State createState() => _ScreenDesign2State();
}

class _ScreenDesign2State extends State<ScreenDesign2> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _videoPlayerController2 = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:
      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: appColor,
        leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Chewie(
                  controller: _chewieController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column( children: <Widget>[
                            Icon(Icons.favorite,color: appColor,),
                            Text("Cool!",style: TextStyle(
                                color: appColor
                            ),)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.bookmark,color: appColor),
                            Text("Simpan",style: TextStyle(
                                color: appColor
                            ),)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.share,color: appColor),
                            Text("Kongsi",style: TextStyle(
                                color: appColor
                            ),)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.warning,color: appColor),
                            Text("Lapor",style: TextStyle(
                                color: appColor
                            ),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      child: heightSizedBox,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("20.3.2020",style: TextStyle(
                            color: Colors.grey
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Metamatik",style: TextStyle(
                                color: Colors.grey
                            ),),
                            sizedBoxbetweenText,
                            Container(
                              width: 2,
                              height: 12,
                              color: Colors.grey,
                            ),
                            sizedBoxbetweenText,
                            Text("Video",style: TextStyle(
                                color: Colors.grey
                            ),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      child: heightSizedBox,
                    ),
                    Text("Numbor Bundar",textAlign: TextAlign.left,style: TextStyle(
                        color: Colors.pink.shade300,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600
                    ),),
                    SizedBox(
                      child: heightSizedBox,
                    ),
                    Text("Video mengenai numbor bundar",style: TextStyle(
                        color: appColor,
                      fontSize: 15.0,
                    ),),
                    SizedBox(
                      child: heightSizedBox,
                    ),
                    Text("#matimatikahun3  #tahun3",style: TextStyle(
                        color: Colors.black,
                      fontSize: 15.0,
                    ),),
                    SizedBox(
                      child: heightSizedBox,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(radius: 30.0,
                        backgroundImage: AssetImage("assets/design.png"),),
                        Text("Azy Luqman",style: TextStyle(
                            color: Colors.blue.shade800,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400
                        ),),
                        SizedBox(
                          width: 40.0,
                        ),
                        OutlineButton.icon(onPressed: (){},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            borderSide: BorderSide(
                                color: Colors.pink.shade300
                            ),
                            icon: FaIcon(FontAwesomeIcons.userPlus,color: Colors.pink.shade300),
                            label: Text("Ikut saya",style: TextStyle(
                                color: Colors.pink.shade300
                            ),))
                      ],
                    ),
                    SizedBox(
                      child: heightSizedBox,
                    ),
                    Text("Berikan Komen Anda",style: TextStyle(
                      color: Colors.blue.shade800,
                      fontSize: 15.0,
                    ),),
                    heightSizedBox,
                    ResponsiveContainer(
                      widthPercent: 100,
                      heightPercent: 30,
                      child: Container( decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: appColor),
                      ),),
                    ),
                    heightSizedBox,
                    Center(
                      child: ResponsiveContainer(
                        heightPercent: 7.0,
                        widthPercent: 50.0,
                        child: OutlineButton(onPressed: (){},
                            child: Text("Hantar",style: TextStyle(
                                color: Colors.pink.shade300,
                              fontSize: 20.0
                            ),),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)
                            ),
                            borderSide: BorderSide(
                                color: Colors.pink.shade300
                            ),
                             ),
                      ),
                    )
                  ]
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}

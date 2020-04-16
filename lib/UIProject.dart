import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:srkproject/constants.dart';
import 'package:srkproject/searchbarWidget.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class DesignScreens extends StatefulWidget {
  @override
  _DesignScreensState createState() => _DesignScreensState();
}

class _DesignScreensState extends State<DesignScreens> {
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
      child: Scaffold (
        appBar: AppBar (
          backgroundColor: appColor,
          leading: Icon ( Icons.arrow_back ),
          centerTitle: true,
          title: Text ( "Matematik",
            style: Appbarstyle, ),
        ),
        body: SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column (
              children: <Widget>[
                searchBarWidget ( ),
                SizedBox(
                  child: heightSizedBox,
                ),
                ResponsiveContainer(
                  widthPercent: 100.0,
                  heightPercent: 30.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0)),
                      border: Border.all(color: appColor),
                    ),
                    child : Center(
                      child: Chewie(
                        controller: _chewieController,
                      ),
                    ),
                  ),
                ),
                ResponsiveContainer(
                    widthPercent: 100.0,
                    heightPercent: 30.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                      border: Border.all(color: appColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.favorite,color: appColor,),
                              Text("(20)",style: TextStyle(
                                color: appColor
                              ),),
                              Icon(Icons.bookmark,color: appColor,),
                              Text("(30)",style: TextStyle(
                                  color: appColor
                              ),),
                              Icon(Icons.message,color: appColor,),
                              Text("(5)",style: TextStyle(
                                  color: appColor
                              ),),
                              Icon(Icons.remove_red_eye,color: appColor,),
                              Text("(30)",style: TextStyle(
                                  color: appColor
                              ),),
                              widthBetweenIconRow,
                              Icon(Icons.share,color: appColor,)
                            ],
                          ),
                          Divider(
                            thickness: 2.0,
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
                            child: sizedBoxbetweenText,
                          ),
                          Text("Video mengenai numbor bundar",style: TextStyle(
                            color: appColor,
                            fontSize: 15.0,
                          ),),
                          SizedBox(
                            child: sizedBoxbetweenText,
                          ),
                          Text("#matimatikahun3  #tahun3",style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text("Dari: Azyl",style: TextStyle(
                               color: Colors.blue.shade800,
                               fontSize: 15.0,
                             ),),
                             CircleAvatar(radius: 20.0,
                               backgroundImage: AssetImage("assets/design.png"),),
                           ],
                         ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: heightSizedBox,
                ),
                ResponsiveContainer(
                  widthPercent: 100.0,
                  heightPercent: 30.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0)),
                      border: Border.all(color: appColor),
                    ),
                    child : Center(
                      child: Chewie(
                        controller: _chewieController,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



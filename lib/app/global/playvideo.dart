import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'colors.dart';



class videoPlayer extends StatefulWidget {
  const videoPlayer({super.key});
  @override
  State<videoPlayer> createState() => _ContactusState();
}

class _ContactusState extends State<videoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  late YoutubePlayerController controller1;
  @override
  void initState() {
    super.initState();
    String? videoId;
    videoId = YoutubePlayer.convertUrlToId("https://youtu.be/HnmYMvYyHkg?si=c_5Q-fUxKh0jarcA");
    //print(videoId); // BBAyRBTfsOU
    controller1 = YoutubePlayerController(
        initialVideoId: videoId.toString(),
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true
    )
    );
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }
  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background 1.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          // endDrawer: custom_drawer(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title:   Image(
              image: AssetImage(
                'assets/images/logo 1.png',
              ),
              height: Get.height * 0.08,
            ),
            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon( Icons.arrow_back_ios,
                    color: appcolor().ambercolor,)),
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child:
            CustomScrollView(
              slivers: [
                SliverList.list(
                    children: [
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      // FutureBuilder(
                      //   future: _initializeVideoPlayerFuture,
                      //   builder: (context, snapshot) {
                      //     if (snapshot.connectionState == ConnectionState.done) {
                      //       return AspectRatio(
                      //         aspectRatio: _controller.value.aspectRatio,
                      //         child: VideoPlayer(_controller),
                      //       );
                      //     } else {
                      //       return const Center(
                      //         child: CircularProgressIndicator(),
                      //       );
                      //     }
                      //   },
                      // ),
                      // SizedBox(height: 20,),
                      Container(
                        child: YoutubePlayer(
                          //builder: (context, player) => player,
                           controller: controller1,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent
                          ),
                          onReady: (){
                          controller1.addListener(() { });
                          },


                        ),

                      )
                    ]),
              ],
            ),
          ),    floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
        ),
      ),
    );
  }
}


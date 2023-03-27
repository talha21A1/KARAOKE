import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:pod_player/pod_player.dart';
import 'package:video_player/video_player.dart';

class PlayVideoFromNetwork extends StatefulWidget {
  String url;
  String text;
  PlayVideoFromNetwork({
    Key? key,
    required this.url,
    required this.text,
  }) : super(key: key);

  @override
  State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
}

class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
  late final PodPlayerController controller;
  late VideoPlayerController _videoController;
  late AudioPlayer _audioPlayer;
  late FlutterSoundRecorder _recorder;
  late StreamSubscription _recorderSubscription;

  bool _isRecording = false;
  @override
  void initState() {
    _audioPlayer = AudioPlayer();
    _recorder = FlutterSoundRecorder();
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.url, live: false),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> _startRecording() async {
    try {
      await _recorder.openRecorder();
      await _recorder.startRecorder(toFile: 'path/to/audio/file');
      setState(() {
        _isRecording = true;
      });
      _recorderSubscription =
          _recorder.onProgress!.listen((RecordingDisposition disposition) {
        print(disposition.duration.inSeconds);
      });
    } catch (e) {
      print('Error starting recording: $e');
    }
  }

  // Future<void> _stopRecording() async {
  //   try {
  //     Recording result = await _recorder.stopRecorder();
  //     setState(() {
  //       _isRecording = false;
  //     });
  //     print('Recorded audio: ${result.path}');
  //   } catch (e) {
  //     print('Error stopping recording: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.text),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: height * 0.5,
                child: PodVideoPlayer(
                    onLoading: (context) {
                      return CircularProgressIndicator(
                        color: Colors.red,
                      );
                    },
                    controller: controller),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width,
                  height: height * 0.4,
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          _startRecording();
                        },
                        icon: Icon(Icons.mic)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

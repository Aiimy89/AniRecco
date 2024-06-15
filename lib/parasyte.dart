import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ParasytePage extends StatefulWidget {
  const ParasytePage({Key? key}) : super(key: key);

  @override
  State<ParasytePage> createState() => _ParasytePageState();
}

class _ParasytePageState extends State<ParasytePage> {
  final videoURL = "https://www.youtube.com/watch?v=XIkxx3JRt-U&t=35s";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when no longer needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parasyte The Maxim')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200, // Adjust the height as needed
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () => debugPrint('Ready'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(3, 10, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Description:',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(7, 5, 5, 10),
            child: Align(
              alignment: Alignment.topLeft, // Set the alignment to center
              child: Text(
                'All of a sudden, they arrived: parasitic aliens that descended upon Earth and quickly infiltrated humanity by burrowing into the brains of vulnerable targets. These insatiable beings acquire full control of their host and are able to morph into a variety of forms in order to feed on unsuspecting prey.',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(3, 5, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Episode: ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: '24',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(3, 5, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Genre: ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'Sci-Fi, Action, Comedy, Dark',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

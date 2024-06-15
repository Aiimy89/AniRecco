import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NeverlandPage extends StatefulWidget {
  const NeverlandPage({Key? key}) : super(key: key);

  @override
  State<NeverlandPage> createState() => _NeverlandPageState();
}

class _NeverlandPageState extends State<NeverlandPage> {
  final videoURL = "https://www.youtube.com/watch?v=ApLudqucq-s";
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
      appBar: AppBar(title: const Text('The Promised Neverland')),
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
                'Surrounded by a forest and a gated entrance, the Grace Field House is inhabited by orphans happily living together as one big family, looked after by their "Mama," Isabella. Although they are required to take tests daily, the children are free to spend their time as they see fit, usually playing outside, as long as they do not venture too far from the orphanage—a rule they are expected to follow no matter what.',
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
                      text: '28',
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
                      text: 'Sci-Fi, Phycological, Shounen, Survival',
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

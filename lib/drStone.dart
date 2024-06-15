import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DrStonePage extends StatefulWidget {
  const DrStonePage({Key? key}) : super(key: key);

  @override
  State<DrStonePage> createState() => _DrStonePageState();
}

class _DrStonePageState extends State<DrStonePage> {
  final videoURL = "https://www.youtube.com/watch?v=KnEMDDMYYfU&t=20s";
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
      appBar: AppBar(title: const Text('Dr. Stone')),
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
                "After five years of harboring unspoken feelings, high-schooler Taiju Ooki is finally ready to confess his love to Yuzuriha Ogawa. Just when Taiju begins his confession however, a blinding green light strikes the Earth and petrifies mankind around the world—turning every single human into stone.",
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
                      text: 'Sci-Fi, Action, Survival, Time-Travel',
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

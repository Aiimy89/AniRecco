// Importing necessary packages
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// AOTPage StatefulWidget to handle stateful behavior
class AOTPage extends StatefulWidget {
  const AOTPage({Key? key}) : super(key: key);

  @override
  State<AOTPage> createState() => _AOTPageState();
}

// State class _AOTPageState that extends the AOTPage StatefulWidget
class _AOTPageState extends State<AOTPage> {
  // URL of the YouTube video to be played
  final videoURL = "https://www.youtube.com/watch?v=q3Rk7lPxFU0";

  // Controller for the YouTube video player
  late YoutubePlayerController _controller;

  // initState method is called when the widget is inserted into the widget tree
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    // Initializing the YouTube player controller with the video ID and autoplay disabled
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  // dispose method is called when the widget is removed from the widget tree
  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when no longer needed
    super.dispose();
  }

  // build method defines the user interface of the widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attack On Titan Final Season')),
      body: Column(
        children: [
          // Container to hold the YouTube player widget
          Container(
            width: double.infinity,
            height: 200, // Adjust the height as needed
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () => debugPrint('Ready'),
            ),
          ),
          // Padding and Align widgets for displaying the description of the anime
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
                "4 years after the Survey Corps reached the shore beyond the walls, Falco Grice and Gabi Braun are among Marley's \"Warrior Candidates\" who wish to inherit the power of the titans.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          // Padding and Align widgets for displaying the episode information
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
          // Padding and Align widgets for displaying the genre information
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
                      text: 'Action, Drama, Gore, Military, Survival',
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

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// The DemonSlayerPage class extends StatefulWidget, allowing for dynamic changes to the UI.
class DemonSlayerPage extends StatefulWidget {
  const DemonSlayerPage({Key? key}) : super(key: key);

  @override
  State<DemonSlayerPage> createState() => _DemonSlayerPageState();
}

// The _DemonSlayerPageState class holds the state of the DemonSlayerPage.
class _DemonSlayerPageState extends State<DemonSlayerPage> {
  final videoURL =
      "https://www.youtube.com/watch?v=PUeB0qbisq0"; // URL of the YouTube video trailer.
  late YoutubePlayerController
      _controller; // YoutubePlayerController to control the YouTube video player.

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(
        videoURL); // Extract the YouTube video ID from the URL.

    // Initialize the YoutubePlayerController with the videoID and set autoPlay to false.
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
    _controller
        .dispose(); // Dispose the controller when no longer needed to avoid memory leaks.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'Demon Slayer')), // The app bar with the title 'Demon Slayer'.
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200, // Set the height of the video player container.
            child: YoutubePlayer(
              controller: _controller, // Assign the YouTube player controller.
              showVideoProgressIndicator:
                  true, // Show the progress indicator while the video is buffering.
              onReady: () => debugPrint(
                  'Ready'), // Callback when the video player is ready to play.
            ),
          ),
          // Display the description of the series.
          Padding(
            padding: EdgeInsets.fromLTRB(3, 10, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Description:',
                style: TextStyle(
                    fontSize: 18, color: Colors.blue), // Styling the text.
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(7, 5, 5, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'The story follows Tanjiro Kamado, a young boy who becomes a demon slayer after his family is slaughtered by demons, and his journey to find a cure for his sister Nezuko, who has turned into a demon.',
                style: TextStyle(fontSize: 18), // Styling the text.
              ),
            ),
          ),
          // Display the number of episodes in the series.
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
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(text: '26', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ),
          ),
          // Display the genres of the series.
          Padding(
            padding: EdgeInsets.fromLTRB(3, 5, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                      fontSize: 18, color: Colors.black), // Styling the text.
                  children: [
                    TextSpan(
                      text: 'Genre: ',
                      style: TextStyle(color: Colors.blue), // Styling the text.
                    ),
                    TextSpan(
                      text: 'Action, Supernatural, Historical, Drama',
                      style: TextStyle(color: Colors.red), // Styling the text.
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

// Import necessary packages and libraries.
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:provider/provider.dart';

// Define a data class called FavoriteData to hold information about the anime series.
class FavoriteData {
  final String name;
  final int episode;
  final String image;
  bool isFavorite;

  // Constructor for FavoriteData class.
  FavoriteData({
    required this.name,
    required this.episode,
    required this.image,
  }) : isFavorite = false;
}

// Create a model class called FavoriteModel to manage a list of favorite anime series.
class FavoriteModel extends ChangeNotifier {
  List<FavoriteData> _favorites = [];
  List<FavoriteData> get favorites => _favorites;

  // Method to add an anime series to the list of favorites.
  void addToFavorites(FavoriteData data) {
    if (_favorites.length < 1) {
      _favorites.add(data);
      notifyListeners();
    } else {
      // Display a message or handle the case when the limit is reached.
      print('Favorite limit reached');
    }
  }

  // Method to remove an anime series from the list of favorites.
  void removeFromFavorites(FavoriteData data) {
    _favorites.remove(data);
    notifyListeners();
  }
}

// Define the StatefulWidget class called Jujutsu.
class Jujutsu extends StatefulWidget {
  const Jujutsu({Key? key}) : super(key: key);

  @override
  State<Jujutsu> createState() => _JujutsuState();
}

// Define the State class for the Jujutsu StatefulWidget.
class _JujutsuState extends State<Jujutsu> {
  // Define videoURL to hold the YouTube video URL for the anime trailer.
  final videoURL = "https://www.youtube.com/watch?v=O6qVieflwqs";
  late YoutubePlayerController _controller;
  late FavoriteData jujutsuData;

  @override
  void initState() {
    // Extract the videoID from the YouTube video URL.
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    // Initialize the YouTube player controller with the videoID and set autoPlay to false.
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    // Create an instance of FavoriteData with information about the anime series.
    jujutsuData = FavoriteData(
      name: "Jujutsu Kaisen S2",
      episode: 23,
      image:
          'https://c4.wallpaperflare.com/wallpaper/787/854/424/jujutsu-kaisen-satoru-gojo-anime-boys-anime-girls-hd-wallpaper-preview.jpg',
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Dispose the YouTube player controller when no longer needed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Access the FavoriteModel instance using Provider.of.
    final favoriteModel = Provider.of<FavoriteModel>(context);
    final favorites = favoriteModel.favorites;
    final isFavorite = favorites.contains(jujutsuData);

    return Scaffold(
      appBar:
          AppBar(title: const Text('Jujutsu Kaisen S2')), // AppBar with title.
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200, // Height of the YouTube video player container.
            child: YoutubePlayer(
              controller: _controller, // YouTube player controller.
              showVideoProgressIndicator: true,
              onReady: () => debugPrint(
                  'Ready'), // Callback when the video player is ready to play.
            ),
          ),
          // Description text section.
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
              alignment: Alignment.topLeft,
              child: Text(
                // Description text for the anime series.
                "Yuji Itadori is a boy with tremendous physical strength, though he lives a completely ordinary high school life. One day, to save a friend who has been attacked by cursed spirits, he eats the finger of Sukuna, taking the curse into his own soul. From then on, he shares one body with the King of Curses.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          // Episode information section.
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
                      text: '23',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Genre information section.
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
                      text: 'Action, Shounen, School',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // IconButton to add/remove the anime series from favorites.
          IconButton(
            icon: isFavorite
                ? Icon(Icons.favorite,
                    color: Colors.red) // Heart icon when anime is a favorite.
                : Icon(Icons.favorite_border,
                    color:
                        Colors.black), // Border heart icon when not a favorite.
            onPressed: () {
              if (isFavorite) {
                favoriteModel
                    .removeFromFavorites(jujutsuData); // Remove from favorites.
              } else {
                favoriteModel.addToFavorites(jujutsuData); // Add to favorites.
              }
            },
          )
        ],
      ),
    );
  }
}

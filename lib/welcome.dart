import 'package:flutter/material.dart';
import 'favorite.dart';
import 'genres.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key, this.name}) : super(key: key);

  final String? name;
  // final String? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
            child: Row(
              // Use Row instead of Column
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // title in the appbar
                Text(
                  'AniRecco ',
                  style: TextStyle(
                    //fontFamily: 'Jackpot', // Custom font 1
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                // text 'B' refers to anime character in the appbar
                Text(
                  'C',
                  style: TextStyle(
                    fontFamily: 'AOT', // Custom font 2
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          // wallpaper background
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pic13.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                // to display welcome and the entered name in the previous page
                SizedBox(height: 40),
                Text(
                  'Welcome, ${name.toString()}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                // to display "To No.1 Anime Recommendation App"
                Text(
                  'To No.1 Anime Recommendation App',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(height: 40),
                // Favorites button to go to Favourites page
                Container(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FavoritePage()),
                      );
                    },
                    // display text Favorites text in the button
                    child: const Text(
                      'Favorites',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Genres button to go to Genres page
                Container(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GenresPage()),
                      );
                    },
                    // display text Genres text in the button
                    child: const Text(
                      'Genres',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

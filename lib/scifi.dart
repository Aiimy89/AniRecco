import 'package:flutter/material.dart';
import 'drStone.dart';
import 'neverland.dart';
import 'parasyte.dart';
import 'gate.dart';

class SciFi extends StatelessWidget {
  const SciFi({Key? key}) : super(key: key);

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
              // display application name in the appbar
              Text(
                'AniRecco ',
                style: TextStyle(
                  //fontFamily: 'Jackpot', // Custom font 1
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              // Anime character beside the application name
              Text(
                'F',
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
      // wallpaper background
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pic13.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            // display text 'sci-fi' at the top of the body
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Sci-Fi',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Dr. Stone
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrStonePage()),
                    );
                  },
                  // create anime card for "Dr. Stone"
                  child: Container(
                    width: 160,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 7),
                          // display anime poster in the card
                          Container(
                            child: Image.asset('assets/pic5.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Dr. Stone',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Sci-Fi, Fantasy',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // The Promised Neverland
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NeverlandPage()),
                    );
                  },
                  // create anime card for "The Promised Neverland"
                  child: Container(
                    width: 160,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          // display anime poster in the card
                          const SizedBox(height: 7),
                          Container(
                            child: Image.asset('assets/pic6.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'The Promised Neverland',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Sci-Fi, Thriller',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Parasyte The Maxim
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ParasytePage()),
                    );
                  },
                  // create anime card for "Parasyte The Maxim"
                  child: Container(
                    width: 160,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 7),
                          // display anime poster in the card
                          Container(
                            child: Image.asset('assets/pic7.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Parasyte The Maxim',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Sci-Fi, Horror',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Steins;Gate
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GatePage()),
                    );
                  },
                  // create anime card for "Steins;Gate"
                  child: Container(
                    width: 160,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 7),
                          // display anime poster in the card
                          Container(
                            child: Image.asset('assets/pic8.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Steins;Gate',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Sci-Fi',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

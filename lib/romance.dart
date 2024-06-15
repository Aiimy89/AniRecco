import 'package:flutter/material.dart';
import 'chunibyo.dart';
import 'horimiya.dart';
import 'kaguya.dart';
import 'takagi.dart';

class Romance extends StatelessWidget {
  const Romance({Key? key}) : super(key: key);

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
                'V',
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
            // display text 'romance' at the top of the body
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Romance',
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
                // Kaguya-sama: Love Is War
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KaguyaPage()),
                    );
                  },
                  // to make anime card
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
                          offset: Offset(0, 3),
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
                            child: Image.asset('assets/pic9.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Kaguya-sama: Love Is War',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Romance, Drama',
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
                // Horimiya
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HorimiyaPage()),
                    );
                  },
                  // create anime card for "Horimiya"
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
                          offset: Offset(0, 3),
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
                            child: Image.asset('assets/pic10.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Horimiya',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Romance, Comedy, School',
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
                // Teasing Master Takagi-san
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TakagiPage()),
                    );
                  },
                  // create anime card for "Teasing Master Takagi-san"
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
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 7),
                          //display anime poster in the card
                          Container(
                            child: Image.asset('assets/pic11.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Teasing Master Takagi-san',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Romance, Comedy',
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
                // Chunibyo
                // to make card clickable
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChunibyoPage()),
                    );
                  },
                  // create anime card for "Chunibyo"
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
                          offset: Offset(0, 3),
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
                            child: Image.asset('assets/pic12.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Chunibyo',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Romance, Action',
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
          ],
        ),
      ),
    );
  }
}

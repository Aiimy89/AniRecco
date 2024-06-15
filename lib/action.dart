import 'package:flutter/material.dart';
import 'jjk.dart';
import 'demonslayer.dart';
import 'aot.dart';
import 'opm.dart';

class Fight extends StatelessWidget {
  const Fight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         flexibleSpace: Padding(
           padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
           child: Row( // Use Row instead of Column
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              // Application Name in the appbar
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
                 'D',
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
        // display wallpaper background
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pic13.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            // display text 'action' at the top of the body
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Action',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Jujutsu Kaisen S2
              // to make card clickable 
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Jujutsu()),
                    );
                  },
                  // create anime card for "Jujutsu Kasen S2"
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
                            child: Image.asset('assets/pic0.jpg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Jujutsu Kaisen S2',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genres in the card
                          Text(
                            'Action, Thriller',
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
                // Demon Slayer 
                // to make card clickable 
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DemonSlayerPage()),
                    );
                  },
                  // create anime card
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
                          // display anime poster of "Demon Slayer"
                          Container(
                            child: Image.asset('assets/pic1.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Demon Slayer',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Action, Historical',
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
                // Attack On Titan
                // to make card clickable 
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AOTPage()),
                    );
                  },
                  // create anime card for "Attack On Titan"
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
                    // display anime poster in the card
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 7),
                          Container(
                            child: Image.asset('assets/pic2.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'Attack On Titan',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Action, Dark Fantasy',
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
                // One Punch Man
                // to make card clickable 
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OPMPage()),
                    );
                  },
                  // create anime card for "One Punch Man"
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
                          // display anime poster in the card
                          const SizedBox(height: 7),
                          Container(
                            child: Image.asset('assets/pic3.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(height: 3),
                          // display anime title in the card
                          Text(
                            'One Punch Man',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 1),
                          // display anime genre in the card
                          Text(
                            'Action, Comedy',
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

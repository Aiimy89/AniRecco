import 'package:flutter/material.dart';
import 'favorite.dart';
import 'all.dart';
import 'action.dart';
import 'romance.dart';
import 'scifi.dart';

class GenresPage extends StatelessWidget {
  const GenresPage({Key? key}) : super(key: key);

  void navigateNextPage(BuildContext ctqx) {
    Navigator.of(ctqx).push(MaterialPageRoute(builder: (_) {
      return FavoritePage();
    }));
  }

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
              Text(
                'AniRecco ',
                style: TextStyle(
                  //fontFamily: 'Jackpot', // Custom font 1
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                'B',
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pic13.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: Center(
          child: Column(children: [
            SizedBox(height: 130),
            Text('Genres', 
            style: TextStyle(color: Colors.white, 
            fontSize: 30,
            ),
            ),
            SizedBox(height: 50),
            Container(
              width: 200, // Set the desired width
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => All(
                              title: 'x',
                            )),
                  );
                },
                child: const Text(
                  'All',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200, // Set the desired width
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fight()),
                  );
                },
                child: const Text(
                  'Action',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200, // Set the desired width
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Romance()),
                  );
                },
                child: const Text(
                  'Romance',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200, // Set the desired width
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SciFi()),
                  );
                },
                child: const Text(
                  'Sci-Fi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'welcome.dart';
import 'jjk.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoriteModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner set into false to remove the debug label in the appBar
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      //title for appbar
      home: const MyHomePage(
        title: 'AniRecco',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // define before creating a button
  final nameTxtCnt = TextEditingController();

  final IDTxtCnt = TextEditingController();

  // button to go welcome page
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return WelcomePage(
        name: nameTxtCnt.text,
      );
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
                'A',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // text field for user to enter name
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: nameTxtCnt,
                  decoration: InputDecoration(
                    labelText: 'NAME',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // text field for user to enter id
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: IDTxtCnt,
                  decoration: InputDecoration(
                    labelText: 'ID',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // button for user to enter and go to the next page
              ElevatedButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  child: const Text(
                    'ENTER',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

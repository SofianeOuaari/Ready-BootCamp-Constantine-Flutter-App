import 'package:flutter/material.dart';
import 'pages/speakersdetails.dart';
import 'pages/programme.dart';
import 'pages/location.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  Widget build(BuildContext context) {
    return SplashScreen(
      /*photoSize: 100.0,
      image: Image.asset("assets/Starter_Image.jpg"),
      backgroundColor: Colors.cyan,*/
      image: Image.asset('assets/ready_logo.jpg'),
      photoSize: 150,
      seconds: 15,
      title: Text(
        "Ready BootCamp Constantine 2019",
        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900,fontFamily:'Precious'),
      ),
      navigateAfterSeconds: MainPage(),
      loaderColor: Colors.red,
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ready Bootcamp",
        theme: ThemeData(
            primaryColor: Colors.green,
            accentColor: Colors.greenAccent[200],
            primarySwatch: Colors.lightGreen),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Ready BootCamp Algeria"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.people),
                    text: "Speakers",
                  ),
                  Tab(icon: Icon(Icons.book), text: "Programme"),
                  Tab(icon: Icon(Icons.map), text: "location")
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                SpeakerDetails(),
                EventProgramme(),
                EventLocation()
              ],
            ),
          ),
        ));
  }
}

import "package:flutter/material.dart";

class IntroPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ready_bootcam_logo.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.25), BlendMode.dstATop))),
      ),
      Column(
        children: <Widget>[
          Center(
            child: Text("Welcome in Ready BootCamp"),
          ),
          Text(""),
          IconButton(
            icon: Icon(Icons.info),
          )
        ],
      )
    ]);
  }
}

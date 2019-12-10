import "package:flutter/material.dart";

class SpeakerBiography extends StatelessWidget {
  String name = '';
  String description = '';
  String img = '';

  SpeakerBiography(String name, String description, String img) {
    this.name = name;
    this.description = description;
    this.img = img;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          title: Text(this.name),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/ready_bootcamp_logo.jpg'),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.25), BlendMode.dstATop))),
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(this.img),
                                fit: BoxFit.fill)),
                      ),
                      Text(
                        this.name,
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                 Expanded(child:Card(
                  margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
                  child: Text(this.description,
                      style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w300)),
                ))
                 ],
            )
          ],
        ));
  }
}

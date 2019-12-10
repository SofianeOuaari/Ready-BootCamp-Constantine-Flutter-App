import "package:flutter/material.dart";
import "speakersbio.dart";

class SpeakerDetails extends StatelessWidget {
  final List<Map<String, String>> info = [
    {"image": "assets/Bouache_picture.jpg", "description": "Pr Bouache Mourad"},
    {"image": "assets/Farouk_Dey_Picture.jpg", "description": "Pr Dey Farouk"}
  ];
  final Map<String, Map<String, String>> bioinfo = {
    "bouache": {
      "name": "Pr Bouache Mourad",
      "description":
          "Mourad Bouache received his PhD degree from the university of Perpignan Via Domitia in France in Computer Science (Computer Architecture). He received the Master degree in Micro-Architecture from the University of Boumerdes with a co-direction with the University of Perpignan in France in 2006. He received his Bachelor degree in Software Engineering and Computer Science from the university of Boumerdes, M'hamed Bougara (Algeria). Started to work at Yahoo in Sillicon Valley in July 2012-Oath in 2016 and Verizon Media in 2019 as Performane Engineering leader for Data Center, Hardware and Software Optimization. ",
      "img": "assets/Bouache_picture.jpg"
    },
    "dey": {
      "name": "Pr Farouk Dey",
      "description":
          "Farouk has held senior leadership and board roles at John Hopkins, Standford, Carnegie Mellon, The University of Floria, The National Association for Colleges and Employers (NASE). His credentials include a PhD in Higher Education Administration, EdS in Higher Education Admnistration, MBA. Named on of the 2018 LinkedIn top voices in Education, Farouk has served as a consultant for many organizations and universities, faculty at several institutes, and keynote speaker at many conferences in the US and around the world.",
      "img": "assets/Farouk_Dey_Picture.jpg"
    },
    "senouci": {
      "name": "Pr Benamour Senouci ",
      "description":
          "Benamour Senousi received his Master and PhD in computer engineering from the National Polytechnic of Grenoble (Grenoble INP) within the TIMA Laboratory (France) in 2004 and 2008 respectively. After his PhD he worked on different positions, as assistant professoror research fellow within different institutions, University of Perpignan (France), University of Twente (The Netherlands), National Center for Scientific Research (CNRS), and University of Burgundy (France). He worked as research follow for two years in the University of Twente (The Netherlands) with CAES (Computer Architecture for Embedded Systems) laboratory. Also he was an invited professor in the Kyungpook National University, KNU (South Korea).",
      "img": "assets/Senouci.jpg"
    }
  };

  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ready_bootcamp_logo.jpg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.25), BlendMode.dstATop)))),
      Container(
          child: Column(children: <Widget>[
        Row(children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/Bouache_picture.jpg"))),
          ),
          Expanded(
            child: Text("Pr.Bouache Mourad", style: TextStyle(fontSize: 15)),
          ),
          Expanded(
              child: IconButton(
                  icon: Icon(Icons.info),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return SpeakerBiography(
                          bioinfo["bouache"]["name"],
                          bioinfo["bouache"]["description"],
                          bioinfo["bouache"]["img"]);
                    }));
                  }))
        ]),
        SizedBox(
          height: 15.0,
        ),
        Row(children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/Farouk_Dey_Picture.jpg"))),
          ),
          Expanded(
            child: Text("Pr.Farouk Dey", style: TextStyle(fontSize: 15)),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext build) {
                  return SpeakerBiography(bioinfo["dey"]["name"],
                      bioinfo["dey"]["description"], bioinfo["dey"]["img"]);
                }));
              },
            ),
          )
        ]),
        SizedBox(
          height: 15.0,
        ),
        Row(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:15.0,right:15.0,left:15.0),
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("assets/Senouci.jpg"))),
          ),
          Expanded(
            child: Text("Pr.Snouci Benamour", style: TextStyle(fontSize: 15)),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext build) {
                  return SpeakerBiography(
                      bioinfo["senouci"]["name"],
                      bioinfo["senouci"]["description"],
                      bioinfo["senouci"]["img"]);
                }));
              },
            ),
          )
        ]),
        SizedBox(height: 10.0,child: Text("Sponsors",style: TextStyle(fontWeight:FontWeight.w700,fontStyle: FontStyle.italic),),),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              
              children: <Widget>[
                Container(
                  
                  
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    
                      image: DecorationImage(
                        image: AssetImage('assets/logo_3.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle),
                ),Text("Constantine 3")
              ],
            )
          ,Column(
                
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    
                      image: DecorationImage(
                        image: AssetImage('assets/sirius_logo.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle),
                ),Text("Sirius")
              ],
            )],
        )
      ]))
    ]);
  }
}

class SpeakersInfo extends StatelessWidget {
  String img = "";
  String des = "";

  SpeakersInfo(String i, String d) {
    this.img = i;
    this.des = d;
  }
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        margin: EdgeInsets.all(15.0),
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
                DecorationImage(fit: BoxFit.fill, image: AssetImage(this.img))),
      ),
      Expanded(
        child: Text(this.des, style: TextStyle(fontSize: 15)),
      ),
      Expanded(
        child: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {},
        ),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:flutterr/menu/drawer.widget.dart';
import 'package:url_launcher/url_launcher.dart';


class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(""),
        actions: [
          // IconButton pour basculer entre le mode sombre et clair
          IconButton(
            icon: Icon(Icons.brightness_6), // Utilisation de l'icône de thème
            onPressed: () {
            
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/img6.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0.0, -0.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                        
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('image/img7.jpg'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Ilef ben ayed",
                        style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Je suis une étudiante en génie informatique",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    launch("https://www.linkedin.com/feed/");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.code),
                  onPressed: () {
                    launch("https://github.com/");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chat_bubble),
                  onPressed: () {
                    launch("https://api.whatsapp.com/");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
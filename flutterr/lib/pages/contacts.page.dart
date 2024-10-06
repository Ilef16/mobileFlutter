import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutterr/menu/drawer.widget.dart';

// Adresse globale
String address = "Route Manzel Chaker";

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("MES CONTACTS")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen(address)),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.blue[900]),
                    title: Text(
                      "Adresse : Sfax",
                      style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
               Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(Icons.location_on, color: Colors.green[900]),
                  title: Text(
                    "Adresse email: ilefbenayed08@gmail.com",
                    style: TextStyle(fontSize: 18, color: Colors.green[900]),
                  ),
                ),
              ),
              SizedBox(height: 20),
               Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(Icons.calendar_today, color: Colors.orange[900]),
                  title: Text(
                    "Date de naissance: 16/08/2000",
                    style: TextStyle(fontSize: 18, color: Colors.orange[900]),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.purple[900]),
                  title: Text(
                    "Téléphone: +216 21 958 304",
                    style: TextStyle(fontSize: 18, color: Colors.purple[900]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MapScreen extends StatelessWidget {
  final String address;

  MapScreen(this.address);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Localisation')),
      body: WebView(
        initialUrl: 'https://www.google.com/maps/search/$address/@35.8091613,10.5167458,8z?entry=ttu',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
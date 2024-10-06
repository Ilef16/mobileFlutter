import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
                ListTile(
                title: Text(
                  'Bienvenue dans mon CV',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(221, 214, 132, 132),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
                 Container(
            width: double.infinity,
            padding: EdgeInsets.all(1),
            margin: EdgeInsets.only(bottom: 30, left: 30, right: 30), // Margin adjusted
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('image/img7.jpg'),
                    radius: 40,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Ilef Ben Ayed',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            
              ListTile(
                title: Text(
                  'A propos de moi',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.account_circle, color: Colors.black87),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.black87,
                ),
                onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/index");
                },
              ),
              ListTile(
                title: Text(
                  'Parcours académique',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.school, color: Colors.black87),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.black87,
                ),
                onTap: () {
                   Navigator.pop(context);
                      Navigator.pushNamed(context, "/parcour");
                },
              ),
                    ListTile(
                title: Text(
                  'Compétances',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.zoom_out_map,color: Colors.black87),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.pop(context);
                      Navigator.pushNamed(context, "/competance");
                },
              ),
              ListTile(
                title: Text(
                  'Certifications',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.bolt, color: Colors.black87),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.black87,
                ),
                onTap: () {
                   Navigator.pop(context);
                      Navigator.pushNamed(context, "/passion");
                },
              ),
         
              ListTile(
                title: Text(
                  'portfolio',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.library_add, color: Colors.black87),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.pop(context);
                      Navigator.pushNamed(context, "/portfolio");
                },
              ),

               ListTile(
                title: Text(
                  'contact',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.call, color: Colors.black87),
                trailing: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.pop(context);
                      Navigator.pushNamed(context, "/contacts");
                },
              ),
           
            ],
          ),
        ],
      ),
    );
  }
}

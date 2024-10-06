import 'package:flutter/material.dart';
import 'package:flutterr/menu/drawer.widget.dart';

class competencePage extends StatelessWidget {
  const competencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("Compétences")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SectionTitle(title: "Framework"),
          SkillItem(title: "Angular"),
          SkillItem(title: "React"),
          SkillItem(title: "ASP.NET"),
          SizedBox(height: 20.0),
          SectionTitle(title: "Base de données"),
          SkillItem(title: "PL/SQL"),
          SkillItem(title: "MySQL"),
          SkillItem(title: "Oracle"),
          SkillItem(title: "SQL Server Management Studio (SSMS)"),
          SizedBox(height: 20.0),
          SectionTitle(title: "Langages"),
          SkillItem(title: "HTML5"),
          SkillItem(title: "CSS3"),
          SkillItem(title: "JavaScript ES6"),
          SkillItem(title: "Java"),
          SkillItem(title: "C"),
          SkillItem(title: "Python"),
          SizedBox(height: 20.0),
          SectionTitle(title: "Systèmes d'exploitation"),
          SkillItem(title: "Windows"),
          SkillItem(title: "Linux"),
          SizedBox(height: 20.0),
          SectionTitle(title: "Fondements de l'Intelligence Artificielle"),
          SkillItem(title: "Machine Learning"),
          SkillItem(title: "Data Mining"),
          SkillItem(title: "Deep Learning"),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String title;

  const SkillItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
          leading: Icon(Icons.check_circle, color: Colors.green),
        ),
        Divider(),
      ],
    );
  }
}
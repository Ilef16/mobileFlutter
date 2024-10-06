import 'package:flutter/material.dart';
import 'package:flutterr/menu/drawer.widget.dart';

class contact extends StatelessWidget {
  const contact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("Portfolio")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
        ProjectCard(
  title: "Projet Data Mining",
  description: "Analyse détaillée et utilisation de RandomForestClassifier pour prédire les accidents potentiels en assurance habitation, renforçant ainsi la gestion des risques. Contribution à une meilleure compréhension des risques et à une prise de décision plus éclairée dans le domaine de l'assurance.",
  languages: ["Python"],
  languageIcons: [
    Image.asset("image/python.png", height: 30),
  ],
),
          ProjectCard(
            title: "Application web",
            description:
                "Développement d'un site web dédié à la gestion de formations en ligne, permettant la planification, l'administration, et le suivi efficace des programmes de formation à distance.",
            languages: ["ASP.NET", "SSMS"],
         
            languageIcons: [
              Image.asset("image/asp.net.jpg", height: 30),
       
            ],
          ),
          ProjectCard(
            title: "Stage d'été 2023",
            description:
                "Développement d'un site web facilitant les relations entre petites entreprises : certaines entreprises peuvent publier des offres tandis que d'autres ont la possibilité d'ajouter des propositions en réponse à ces offres.",
            languages: ["React", "Node.js"],
    
            languageIcons: [
              Image.asset("image/react.png", height: 30),
            
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> languages;

  final List<Widget> languageIcons;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.languages,

    required this.languageIcons,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8 ),
                Row(
                  children: [
                    Text(
                      "Langages utilisés: ",
                      style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(width: 8),
                    Row(
                      children: languageIcons,
                      
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
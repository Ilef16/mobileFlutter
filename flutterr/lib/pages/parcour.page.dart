import 'package:flutter/material.dart';
import 'package:flutterr/menu/drawer.widget.dart';

class parcour extends StatelessWidget {
  const parcour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Parcours Académique"), // Titre en minuscules et plus clair
        centerTitle: true, // Centrer le titre de l'appbar
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20), // Ajout de padding autour de SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, // Centrer les enfants horizontalement
          children: [
            Text(
              "J'ai obtenu mon Bac en 2019 : Baccalauréat en Sciences Expérimentales",
              style: TextStyle(
                fontSize: 18, // Augmenter la taille de la police
                color: Colors.black87, // Utilisation de la couleur de texte par défaut
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.8, // Utiliser 80% de la largeur de l'écran pour l'image
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey[300]!, // Utilisation de la couleur de la bordure grise
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'image/bac.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20), // Augmentation de l'espace entre les conteneurs
            Text(
              "J'ai obtenu ma Licence en 2022 : Licence en Informatique de Gestion, spécialité Business Intelligence",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey[300]!,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'image/fac.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
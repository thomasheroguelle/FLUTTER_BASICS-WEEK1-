import 'package:flutter/material.dart';
import 'package:semaine1/products/ProductBox.dart';

class ProductPage extends StatelessWidget {
  // -> La classe ProductPage étend StatelessWidget, ce qui signifie qu'elle est immuable
  // Le constructeur de la classe ProductPage avec un paramètre nommé 'title' :
  const ProductPage({Key? key, required this.title}) : super(key: key);
  // Propriété immuable 'title' de type String :
  final String title;

  // Méthode privée '_showDialog' pour afficher une boîte de dialogue
  void _showDialog(BuildContext context, String txt) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // Retourne un widget AlertDialog avec un titre et un contenu dynamique
          return AlertDialog(
              title: const Text("Message"),
              content: Text("Vous avez tapoté sur $txt"),
              actions: <Widget>[
                // Un bouton de fermeture de la boîte de dialogue
                CloseButton(onPressed: () {
                  Navigator.of(context).pop();
                })
              ]);
        });
  }

  // Méthode de construction de l'interface utilisateur de la page
  @override
  Widget build(BuildContext context) {
    // Utilisation du widget Scaffold pour définir la structure de la page
    return Scaffold(
        appBar: AppBar(
          // Utilisation de la couleur inversée du thème pour la barre d'applications
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Affichage du titre de la page
          title: Text(title),
        ),
        body: ListView(
            // Définition des propriétés du widget ListView
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
            children: <Widget>[
              // Utilisation de GestureDetector pour détecter les taps sur un produit et afficher la boîte de dialogue
              GestureDetector(
                  onTap: () {
                    _showDialog(context, "Iphone");
                  },
                  child: const ProductBox(
                    name: "Iphone",
                    description: "Super Iphone",
                    image: "iphone.png",
                    price: 600,
                  )),
              GestureDetector(
                  onTap: () {
                    _showDialog(context, "Ipad");
                  },
                  child: const ProductBox(
                    name: "Ipad",
                    description: "Super Ipad",
                    image: "tablet.png",
                    price: 600,
                  )),
              GestureDetector(
                  onTap: () {
                    _showDialog(context, "pixel6");
                  },
                  child: const ProductBox(
                    name: "pixel6",
                    description: "Super pixel6",
                    image: "pixel.png",
                    price: 600,
                  )),
              GestureDetector(
                  onTap: () {
                    _showDialog(context, "PC");
                  },
                  child: const ProductBox(
                    name: "PC",
                    description: "Super PC",
                    image: "laptop.png",
                    price: 600,
                  )),
            ]));
  }
}

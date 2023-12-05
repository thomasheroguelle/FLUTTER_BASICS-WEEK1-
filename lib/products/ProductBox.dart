import 'package:flutter/material.dart';
import 'package:semaine1/products/ratingBox.dart';

// La classe ProductBox étend StatelessWidget, représentant une boîte produit
class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  const ProductBox(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.image});

  // Méthode de construction de l'interface utilisateur de la boîte produit
  @override
  Widget build(BuildContext context) {
    // Utilisation d'un widget Container pour définir les propriétés de la boîte produit
    return Container(
        padding: const EdgeInsets.all(2),
        height: 130,
        // Utilisation d'un widget Card pour encadrer le contenu de la boîte produit
        child: Card(
            // Utilisation d'un widget Row pour organiser les éléments horizontalement
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("web/assets/imgs/$image"),
              // Utilisation d'un widget Expanded pour occuper l'espace restant horizontalement
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(5),
                // Utilisation d'un widget Column pour organiser les éléments verticalement
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                    ),
                    Text(
                      "Prix : ${price.toString()}€",
                    ),
                    const RatingBox(),
                  ],
                ),
              ))
            ])));
  }
}

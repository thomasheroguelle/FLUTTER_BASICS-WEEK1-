// Importation de Flutter Material Design
import 'package:flutter/material.dart';

// La classe RatingBox étend StatefulWidget, ce qui permet de modifier son état interne
class RatingBox extends StatefulWidget {
  // Constructeur de la classe RatingBox avec une clé optionnelle
  const RatingBox({Key? key});

  // Création d'une instance de la classe _RatingBoxState pour gérer l'état interne
  @override
  State createState() => _RatingBoxState();
}

// La classe _RatingBoxState étend la classe State, elle gère l'état interne de RatingBox
class _RatingBoxState extends State<RatingBox> {
  // Propriétés de la classe _RatingBoxState
  int _rating = 0;
  double _size = 20;

  // Méthode privée pour définir la note (_rating) en fonction du bouton cliqué
  void _setRating(int rating) {
    setState(() {
      // Si le bouton 3 est cliqué et la note actuelle est 3, réinitialise la note à 0
      if (rating == 3 && _rating == 3) {
        _rating = 0;
        return;
      }
      // Sinon, met à jour la note en fonction du bouton cliqué
      _rating = rating;
    });
  }

  // Méthode de construction de l'interface utilisateur de la boîte de notation
  @override
  Widget build(BuildContext buildContext) {
    return Row(
      // Alignement des éléments à droite
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        // Bouton 1 pour attribuer une note de 1
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? Icon(Icons.star, size: _size)
                : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () {
              _setRating(1);
            },
          ),
        ),
        // Bouton 2 pour attribuer une note de 2
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? Icon(Icons.star, size: _size)
                : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () {
              _setRating(2);
            },
          ),
        ),
        // Bouton 3 pour attribuer une note de 3
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? Icon(Icons.star, size: _size)
                : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () {
              _setRating(3);
            },
          ),
        ),
      ],
    );
  }
}

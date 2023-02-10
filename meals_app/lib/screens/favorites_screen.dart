import 'package:flutter/material.dart';

// in questa classe non conterrà lo scaffold dal momento che fa parte della Schermata Tab e quindi controllerà solo la parte inferiore
class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('The Favorites'),
    );
  }
}

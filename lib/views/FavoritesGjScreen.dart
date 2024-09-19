import 'package:flutter/material.dart';

class FavoritesGjScreen extends StatelessWidget {
  const FavoritesGjScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hinário Guajajara - Favoritos'),
      ),
      body: const Center(
        child: Text('Conteúdo do Hinário Guajajara - Favoritos'),
      ),
    );
  }
}

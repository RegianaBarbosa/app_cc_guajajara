import 'package:flutter/material.dart';

class FavoritesPtScreen extends StatelessWidget {
  const FavoritesPtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hinário Português - Favoritos'),
      ),
      body: const Center(
        child: Text('Conteúdo do Hinário Português - Favoritos'),
      ),
    );
  }
}

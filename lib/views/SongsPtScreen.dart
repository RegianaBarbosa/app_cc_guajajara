import 'package:flutter/material.dart';

class SongsPt extends StatelessWidget {
  const SongsPt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hinário Português'),
      ),
      body: const Center(
        child: Text('Conteúdo do Hinário Português'),
      ),
    );
  }
}

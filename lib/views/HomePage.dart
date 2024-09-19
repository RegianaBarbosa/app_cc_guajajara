import 'package:app_cantor_cristao_guajajara/design/theme.dart'; // Importe o arquivo com o tema
import 'package:app_cantor_cristao_guajajara/views/utils/my-drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cantor Cristão")),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hinários Section
            Text(
              "Hinários",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: HinarioCard(title: "Português"),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: HinarioCard(title: "Guajajara"),
                ),
              ],
            ),
            SizedBox(height: 24),
            // Favoritos Section
            Text(
              "Favoritos",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: HinarioCard(title: "Português"),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: HinarioCard(title: "Guajajara"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HinarioCard extends StatelessWidget {
  final String title;

  const HinarioCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.book, size: 40, color: AppColors.verdeEscuro),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: AppColors.verdeEscuro),
            ),
          ],
        ),
      ),
    );
  }
}

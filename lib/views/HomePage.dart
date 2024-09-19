import 'package:app_cantor_cristao_guajajara/design/theme.dart'; // Importe o arquivo com o tema
import 'package:app_cantor_cristao_guajajara/views/utils/my-drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cantor Cristão"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: AppColors.cinzaClaro,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hinários Section
            Text(
              "Hinários",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.marromClaro),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: HinarioCard(
                    title: "Português",
                    icon: Icons.book,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: HinarioCard(
                    title: "Guajajara",
                    icon: Icons.book,
                  ),
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
                  child: HinarioCard(
                    title: "Português",
                    icon: Icons.favorite,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: HinarioCard(
                    title: "Guajajara",
                    icon: Icons.favorite,
                  ),
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
  final IconData icon;

  const HinarioCard({required this.title, required this.icon});

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
            Icon(icon, size: 40, color: AppColors.verdeEscuro),
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

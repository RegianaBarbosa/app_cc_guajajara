import 'package:app_cantor_cristao_guajajara/design/theme.dart'; // Importe o arquivo com o tema
import 'package:app_cantor_cristao_guajajara/views/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cantor Cristão',
      theme: AppTheme.theme, // Use o tema definido
      home: HomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hinos Cantor Cristão'),
//         automaticallyImplyLeading: true,
//       ),
//       body: const Center(
//         child: Column(),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             // Cabeçalho do Drawer
//             // DrawerHeader(
//             //   child: Column(
//             //     crossAxisAlignment: CrossAxisAlignment.start,
//             //     children: [
//             //       Image.asset(
//             //         'assets/img/logo.png', // Caminho para a imagem da logo
//             //         width:
//             //             120, // Largura da imagem (ajuste conforme necessário)
//             //         height:
//             //             120, // Altura da imagem (ajuste conforme necessário)
//             //       ),
//             //       SizedBox(height: 10),
//             //     ],
//             //   ),
//             // ),
//             // Seção 1
//             ListTile(
//               leading: Icon(Icons.library_books),
//               title: Text('Hinário Português'),
//               onTap: () {
//                 // Ação para Hinário Português
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.library_books),
//               title: Text('Hinário Guajajara'),
//               onTap: () {
//                 // Ação para Hinário Guajajara
//               },
//             ),
//             Divider(),
//             // Seção 2
//             ListTile(
//               title: Text(
//                 'Favoritos',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               enabled: false, // Desativa a ação de clique
//             ),
//             ListTile(
//               leading: Icon(Icons.library_books),
//               title: Text('Hinário Português'),
//               onTap: () {
//                 // Ação para Hinário Português na seção Favoritos
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.library_books),
//               title: Text('Hinário Guajajara'),
//               onTap: () {
//                 // Ação para Hinário Guajajara na seção Favoritos
//               },
//             ),
//             Divider(),
//             // Seção 3
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Configurações'),
//               onTap: () {
//                 // Ação para Configurações
//               },
//             ),
//             Divider(),
//             // Seção 4
//             ListTile(
//               leading: Icon(Icons.share),
//               title: Text('Compartilhar app'),
//               onTap: () {
//                 // Ação para Compartilhar app
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.info),
//               title: Text('Sobre o app'),
//               onTap: () {
//                 // Ação para Sobre o app
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:app_cantor_cristao_guajajara/design/theme.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.verdeEscuro,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          ),
          // Section 1: Hinários
          ListTile(
            title: Text('Hinários'),
          ),
          Divider(),
          // Language Options for Hinários
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Português'),
            onTap: () {
              // Handle Português navigation here
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Guajajara'),
            onTap: () {
              // Handle Guajajara navigation here
            },
          ),
          Divider(),
          // Section 2: Favoritos
          ListTile(
            title: Text('Favoritos'),
          ),
          Divider(),
          // Language Options for Favoritos
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Português'),
            onTap: () {
              // Handle Português navigation here
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Guajajara'),
            onTap: () {
              // Handle Guajajara navigation here
            },
          ),
          Divider(),
          // Section 3: Configurações, Compartilhar, Sobre
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () {
              // Handle settings navigation here
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Compartilhar app'),
            onTap: () {
              // Handle app sharing here
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre o app'),
            onTap: () {
              // Handle app information here
            },
          ),
        ],
      ),
    );
  }
}

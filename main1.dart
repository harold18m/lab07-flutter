import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: ListView(
          children: [
            _buildListItem('Home', 'Go to Home Screen', Icons.home),
            _buildListItem('Profile', 'View Profile', Icons.person),
            _buildListItem('Chat', 'Open Chat', Icons.chat),
            _buildListItem('Settings', 'Adjust Settings', Icons.settings),
            _buildListItem('Favorites', 'View Favorites', Icons.favorite),
            _buildListItem('Downloads', 'Open Downloads', Icons.file_download),
            _buildListItem('Album', 'Open song list', Icons.album),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String title, String subtitle, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        // Agrega el código que deseas ejecutar al hacer clic en un ListTile
        // Por ejemplo, puedes navegar a otra pantalla:
        // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
      },
    );
  }
}

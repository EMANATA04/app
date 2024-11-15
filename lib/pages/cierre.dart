import 'package:flutter/material.dart';

void main() {
  runApp(Cierre());
}

class Cierre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil de Usuario',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Miguel angel\nMurillo moreno',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'cuenta estándar',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 71, 184, 118),
                    shape: StadiumBorder(),
                  ),
                  child: Text('Hazte premium', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(color: Colors.grey),
                  ),
                  child: Text('Compartir perfil', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Tu cuenta',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.grey[200],
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.edit, color: Colors.black),
                title: Text('Editar perfil'),
                subtitle: Text('Editar nombre, correo, teléfono...'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfileScreen()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.grey[200],
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.sports_soccer, color: Colors.black),
                title: Text('Últimos juegos'),
                subtitle: Text('partidos jugados, competiciones...'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GamesScreen()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.grey[200],
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.black),
                title: Text('Ajustes'),
                subtitle: Text('configura privacidad, notificaciones...'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
            ),
            Spacer(),
            ListTile(
              tileColor: Colors.grey[200],
              leading: Icon(Icons.power_settings_new, color: Colors.red),
              title: Text(
                'Cerrar sesión',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Pantalla de edición de perfil
class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar Perfil')),
      body: Center(
        child: Text('Pantalla para editar perfil'),
      ),
    );
  }
}

// Pantalla de últimos juegos
class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Últimos Juegos')),
      body: Center(
        child: Text('Pantalla para ver últimos juegos'),
      ),
    );
  }
}

// Pantalla de ajustes
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajustes')),
      body: Center(
        child: Text('Pantalla para ajustes'),
      ),
    );
  }
}

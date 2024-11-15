import 'package:flutter/material.dart';
import 'package:myapp/pages/Perfil1.dart';
import 'package:myapp/pages/chat.dart';
import 'package:myapp/pages/competiciones.dart';
import 'package:myapp/pages/juegarapido.dart';
import 'package:myapp/pages/local.dart';
import 'package:myapp/pages/reserva.dart';

void main() {
  runApp(Home2()); // Inicia la aplicación con la clase principal
}

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App IDX',
      theme: ThemeData(
        primaryColor: Color(0xFF4B3A79),
      ),
      home: AppScreen(),
      routes: {
        '/home': (context) => AppScreen(),           // Ruta para la pantalla principal
        '/partido': (context) => Juegarapido(),      // Ruta para jugar partido
        '/reservar': (context) => Reserva(),    // Ruta para reservar partido
        '/competiciones': (context) =>Competiciones(), // Ruta para competiciones
        '/club': (context) => Local(),            // Ruta para el club
        '/perfil': (context) => Perfil1(),        // Ruta para el perfil
        '/mensajes': (context) => Chat(),    // Nueva pantalla para mensajes
      },
    );
  }
}

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 182, 99),
        title: Text('Hola Miguel !!'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Color.fromARGB(255, 240, 240, 240),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Contenido de la pantalla principal
              Card(
                child: ListTile(
                  title: Text(
                    'Saca el máximo partido',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Recibe notificaciones de pistas disponibles, dale más visibilidad a tus partidos y descubre tus estadísticas avanzadas',
                  ),
                  leading: Icon(Icons.sports_soccer, color: Color.fromARGB(255, 139, 182, 99)),
                ),
              ),
              SizedBox(height: 20),
              
              Text(
                'Recuerda..',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Text('Edita tus preferencias de juego'),
                subtitle: Text('Mejor mano, lado de la cancha, tipo...'),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                onTap: () {},
              ),
              SizedBox(height: 20),

              Text(
                'Juega tu partido perfecto',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildImageOptionCard(
                    context,
                    imagePath: 'images/rb_402.png',
                    label: 'Jugar un partido',
                    route: '/partido',
                  ),
                  _buildImageOptionCard(
                    context,
                    imagePath: 'images/rb_3839.png',
                    label: 'Reservar un partido',
                    route: '/reservar',
                  ),
                  _buildImageOptionCard(
                    context,
                    imagePath: 'images/rb_4413.png',
                    label: 'Competiciones',
                    route: '/competiciones',
                  ),
                  _buildImageOptionCard(
                    context,
                    imagePath: 'images/casa.png',
                    label: 'Tu club',
                    route: '/club',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 248, 248),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Primer botón de navegación
            Padding(
              padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/home'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage("images/casita.png"),
                      size: 30,
                      color: Color.fromARGB(255, 121, 177, 104),
                    ),
                    Text(""),
                  ],
                ),
              ),
            ),
            // Segundo botón de navegación
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/mensajes'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage("images/mensajes.png"),
                      size: 30,
                      color: Color(0xffb9b9b9),
                    ),
                    Text(""),
                  ],
                ),
              ),
            ),
            // Tercer botón de navegación
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/perfil1'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage("images/usuario.png"),
                      size: 30,
                      color: Color(0xffc2c2c2),
                    ),
                    Text(""),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget para la opción de imagen en GridView con navegación
  Widget _buildImageOptionCard(
    BuildContext context, {
    required String imagePath,
    required String label,
    required String route,
  }) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantallas adicionales para la navegación

class PartidoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jugar un partido")),
      body: Center(child: Text("Pantalla para jugar un partido")),
    );
  }
}

class ReservarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reservar un partido")),
      body: Center(child: Text("Pantalla para reservar un partido")),
    );
  }
}

class CompeticionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Competiciones")),
      body: Center(child: Text("Pantalla de competiciones")),
    );
  }
}

class ClubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tu club")),
      body: Center(child: Text("Pantalla de tu club")),
    );
  }
}

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil")),
      body: Center(child: Text("Pantalla de perfil")),
    );
  }
}

// Nueva pantalla Mensajes
class MensajesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mensajes")),
      body: Center(child: Text("Pantalla de mensajes")),
    );
  }
}

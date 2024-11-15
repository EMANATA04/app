import 'package:flutter/material.dart';
import 'package:myapp/pages/home2.dart';

void main() {
  runApp(Competiciones());
}

class Competiciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompetitionsScreen(),
    );
  }
}

class CompetitionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 139, 182, 99),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: const Color.fromARGB(255, 15, 15, 15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home2()),
              );
            },
          ),
          title: Text(
            'Competiciones',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: const Color.fromARGB(255, 7, 7, 7),
            tabs: [
              Tab(text: "Disponible"),
              Tab(text: "Tus competiciones"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AvailableCompetitionsTab(), // Contenido de la pestaña "Disponible"
            Center(
                child: Text(
                    "Tus competiciones")), // Contenido de la pestaña "Tus competiciones"
          ],
        ),
      ),
    );
  }
}

// Modelo de datos para los equipos
class Team {
  final String name;
  final String imageAsset;

  Team({required this.name, required this.imageAsset});
}

// Lista de equipos con imágenes locales
final List<Team> teams = [
  Team(name: "Primera A", imageAsset: "images/liga1.png"),
  Team(name: "Primera B", imageAsset: "images/liga2.png"),
  Team(name: "copa colombia", imageAsset: "images/liga3.png"),
  Team(name: "superliga", imageAsset: "images/liga4.png"),
];

class AvailableCompetitionsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (context, index) {
          final team = teams[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage(team.imageAsset), // Carga la imagen local
                radius: 30,
              ),
              title: Text(team.name),
              subtitle: Text(""), // Puedes ajustar el nombre de la liga aquí
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción al seleccionar un equipo
              },
            ),
          );
        },
      ),
    );
  }
}

class EmptyStateTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sports_soccer_outlined,
              size: 100,
              color: Colors.grey[400],
            ),
            SizedBox(height: 20),
            Text(
              "No hay competiciones en el momento.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para el botón de agregar competiciones
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color.fromARGB(255, 46, 44, 44),
                side: BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text("Agregar"),
            ),
          ],
        ),
      ),
    );
  }
}

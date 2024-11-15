import 'package:flutter/material.dart';
import 'package:myapp/pages/home2.dart';

void main() {
  runApp(Juegarapido());
}

class Juegarapido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchMatchesScreen(),
    );
  }
}

class Match {
  String name;
  String type;
  String date;
  String time;
  String imageUrl; // Propiedad para la imagen del equipo

  Match({
    required this.name,
    required this.type,
    required this.date,
    required this.time,
    required this.imageUrl, // Inicializamos la propiedad con la ruta de la imagen
  });
}

class MatchDetailsScreen extends StatelessWidget {
  final Match match;

  // Constructor que recibe un Match
  MatchDetailsScreen({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(match.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(match.imageUrl, width: 150, height: 150),
            SizedBox(height: 20),
            Text(
              match.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Tipo: ${match.type}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Fecha: ${match.date}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Hora: ${match.time}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para unirse al partido o algo más
              },
              child: Text("Unirse al partido"),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchMatchesScreen extends StatelessWidget {
  final List<Match> matches = [
    Match(name: 'Leones', type: 'Fútbol', date: 'Hoy', time: '10:00 PM', imageUrl: 'images/equipo2.jpg'),
    Match(name: 'Patriotas', type: 'Fútbol', date: 'Hoy', time: '11:00 PM', imageUrl: 'images/equipo3.jpg'),
    Match(name: 'Rocktars', type: 'Fútbol', date: 'Mañana', time: '5:00 PM', imageUrl: 'images/equipo4.jpg'),
    Match(name: 'Tigres', type: 'Fútbol', date: 'Mañana', time: '6:00 PM', imageUrl: 'images/equipo5.jpg'),
    Match(name: 'Condoteños', type: 'Fútbol', date: 'Mañana', time: '7:00 PM', imageUrl: 'images/equipo6.jpg'),
    Match(name: 'Istmina', type: 'Fútbol', date: 'Este fin de semana', time: '2:00 PM', imageUrl: 'images/equipo8.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home2(),
              ),
              
              );

             // Regresar a la pantalla anterior
          },
        ),
        title: Text(
          'Partidos Rápidos',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '',
              style: TextStyle(color: const Color.fromARGB(255, 125, 211, 122)),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                             Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Home2(),

                        ),
                        );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    hintText: "Búsqueda de partidos",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterChip(label: Text("Equipos"), onSelected: (selected) {}),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text("Activos"),
                      onSelected: (selected) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
                // Pantalla de partidos en cuadrícula
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // 3 partidos por fila
                        childAspectRatio: 0.8, // Relación de aspecto
                      ),
                      itemCount: matches.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navegar a la pantalla de detalles con el icono de "Atrás"
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MatchDetailsScreen(match: matches[index]),
                              ),
                            );
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  matches[index].imageUrl, // Ruta de la imagen para cada partido
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(height: 8),
                                Text(matches[index].name),
                                Text(
                                  matches[index].type,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '${matches[index].date}, ${matches[index].time}',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

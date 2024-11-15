import 'package:flutter/material.dart';

void main() {
  runApp(Local());
}

class Local extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchMapScreen(),
    );
  }
}

class Player {
  String name;
  String position;
  String image;

  Player({required this.name, required this.position, required this.image});
}

class SearchMapScreen extends StatelessWidget {
  final List<Player> players = [
    Player(name: 'Jugador 1', position: 'Delantero', image: 'neymar.jpg'),
    Player(name: 'Jugador 2', position: 'Extremo Izquierdo', image: 'assets/player2.png'),
    Player(name: 'Jugador 3', position: 'Extremo Derecho', image: 'assets/player3.png'),
    Player(name: 'Jugador 4', position: 'Volante', image: '/player4.png'),
    Player(name: 'Jugador 5', position: 'Defensa', image: 'assets/player5.png'),
    Player(name: 'Jugador 6', position: 'Defensa', image: 'assets/player6.png'),
    Player(name: 'Jugador 7', position: 'Defensa', image: 'assets/player7.png'),
    Player(name: 'Jugador 8', position: 'Defensa', image: 'assets/player8.png'),
    Player(name: 'Jugador 9', position: 'Defensa', image: 'assets/player9.png'),
    Player(name: 'Jugador 10', position: 'Defensa', image: 'assets/player10.png'),
    Player(name: 'Jugador 11', position: 'Defensa', image: 'assets/player11.png'),
    Player(name: 'Jugador 12', position: 'Defensa', image: 'assets/player12.png'),
    Player(name: 'Jugador 13', position: 'Defensa', image: 'assets/player13.png'),
    Player(name: 'Jugador 14', position: 'Defensa', image: 'assets/player14.png'),
    
    // Agrega más jugadores hasta 15 con diferentes posiciones
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Búsqueda',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '',
              style: TextStyle(color: Colors.blue),
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
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    hintText: "Buscar jugador",
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
                    FilterChip(label: Text("futbol"), onSelected: (selected) {}),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text("posicion"),
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
                // Pantalla de jugadores en cuadrícula
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // 3 jugadores por fila
                        childAspectRatio: 0.8, // Relación de aspecto
                      ),
                      itemCount: players.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Aquí podrías abrir una pantalla para editar el jugador
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(players[index].image),
                                  radius: 30,
                                ),
                                SizedBox(height: 8),
                                Text(players[index].name),
                                Text(
                                  players[index].position,
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

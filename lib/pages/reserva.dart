import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/pages/home2.dart';

void main() {
  runApp(Reserva());
}

class Reserva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String selectedCancha = '';

  // Lista de canchas disponibles
  final List<String> canchasDisponibles = [
    "laureles1",
    "Milagrosa",
    "buenos aires",
    "Bello",
    "Envigado",
  ];

  // Selector de fecha
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2024),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Selector de hora
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

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
                          builder: (context) =>Home2(), // Reemplaza con la página a la que deseas navegar
                        ),
                      );
                    },
        ),
        title: Text(
          'Búsqueda de Reservas',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Acción para ver mapa
            },
            child: Text(
              'Ver mapa',
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
                    hintText: "Medellín",
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
                    FilterChip(label: Text("Fútbol"), onSelected: (selected) {}),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text("Hoy | 10 pm - 3 am"),
                      onSelected: (selected) {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Botón para seleccionar la fecha de la reserva
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton( 
                      onPressed: () => _selectDate(context),
                      child: Text(
                        selectedDate != null
                            ? DateFormat('dd/MM/yyyy').format(selectedDate!)
                            : "Seleccionar Fecha",
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => _selectTime(context),
                      child: Text(
                        selectedTime != null
                            ? selectedTime!.format(context)
                            : "Seleccionar Hora",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: selectedDate == null || selectedTime == null
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 100,
                          color: Colors.grey[400],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "No hay canchas disponibles",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: canchasDisponibles.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: ListTile(
                          leading: Icon(Icons.sports_soccer),
                          title: Text(canchasDisponibles[index]),
                          subtitle: Text(
                            "Fecha: ${DateFormat('dd/MM/yyyy').format(selectedDate!)}\nHora: ${selectedTime!.format(context)}",
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            setState(() {
                              selectedCancha = canchasDisponibles[index];
                            });
                            // Mostrar una alerta de confirmación de reserva
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Confirmar Reserva"),
                                content: Text(
                                  "¿Desea reservar ${canchasDisponibles[index]} para el ${DateFormat('dd/MM/yyyy').format(selectedDate!)} a las ${selectedTime!.format(context)}?",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text("Cancelar"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      // Aquí se puede añadir lógica para guardar la reserva
                                    },
                                    child: Text("Confirmar"),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tabla de Grupos con Escudos'),
          backgroundColor: Colors.red[900],
        ),
        backgroundColor: Colors.blueGrey[900],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Título
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.red[900],
                child: Text(
                  'Torneo de Grupos',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              SizedBox(height: 20),

              // Grupos
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    GrupoWidget(grupoNombre: 'GROUP A'),
                    GrupoWidget(grupoNombre: 'GROUP B'),
                    GrupoWidget(grupoNombre: 'GROUP C'),
                    GrupoWidget(grupoNombre: 'GROUP D'),
                    GrupoWidget(grupoNombre: 'GROUP E'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GrupoWidget extends StatelessWidget {
  final String grupoNombre;

  GrupoWidget({required this.grupoNombre});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.red[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            grupoNombre,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          // Lista de equipos (con escudo y nombre editable)
          EquipoItem(),
          EquipoItem(),
          EquipoItem(),
          EquipoItem(),
          EquipoItem(),
        ],
      ),
    );
  }
}

class EquipoItem extends StatefulWidget {
  @override
  _EquipoItemState createState() => _EquipoItemState();
}

class _EquipoItemState extends State<EquipoItem> {
  File? _escudo;
  final ImagePicker _picker = ImagePicker();

  void _seleccionarEscudo() async {
    // Seleccionar imagen desde la galería
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _escudo = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: _seleccionarEscudo,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              backgroundImage: _escudo != null ? FileImage(_escudo!) : null,
              child: _escudo == null
                  ? Icon(Icons.add, color: Colors.red[900])
                  : null,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nombre del equipo',
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

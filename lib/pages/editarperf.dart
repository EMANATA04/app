import 'package:flutter/material.dart';
import 'package:myapp/pages/cierre.dart';

void main() => runApp(Editarperf());

class Editarperf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Editar Perfil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => EditProfilePage(),
      },
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController(text: "miguel angel murillo moreno");
  final TextEditingController _emailController = TextEditingController(text: "elhombredelasb@gmail.com");
  final TextEditingController _phoneController = TextEditingController(text: "3147107350");
  final TextEditingController _descriptionController = TextEditingController();

  String _countryCode = 'US +1';
  String _gender = 'Undefined';
  String _birthdate = '13/nov/2024';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar perfil'),
        actions: [
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Navegar a CierrePage utilizando el método de navegación personalizado
                navigateToPage(context, CierrePage());
              }
            },
            child: Text(
              'Guardar',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey.shade300,
                  child: Text(
                    'MA',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Cambiar foto de perfil
                },
                child: Text('Cambiar foto de perfil', style: TextStyle(color: Colors.blue)),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nombre y apellidos',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo no puede estar vacío';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || !RegExp(r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+").hasMatch(value)) {
                    return 'Email no válido';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButtonFormField<String>(
                      value: _countryCode,
                      decoration: InputDecoration(labelText: 'Código'),
                      items: ['US +1', 'CO +57'].map((code) {
                        return DropdownMenuItem(
                          value: code,
                          child: Text(code),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _countryCode = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(labelText: 'Teléfono'),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              DropdownButtonFormField<String>(
                value: _gender,
                decoration: InputDecoration(labelText: 'Género'),
                items: ['Undefined', 'Masculino', 'Femenino'].map((gender) {
                  return DropdownMenuItem(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              TextFormField(
                initialValue: _birthdate,
                decoration: InputDecoration(
                  labelText: 'Fecha de nacimiento',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () {
                  // Mostrar selector de fecha
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Descripción'),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Nueva página "Cierre" que muestra un mensaje después de guardar los cambios
class CierrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cierre'),
      ),
      body: Center(
        child: Text(
          'Cambios guardados exitosamente!',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Método de navegación personalizado
void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Cierre()),
  );
}

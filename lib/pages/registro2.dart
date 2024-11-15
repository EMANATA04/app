import 'package:flutter/material.dart';

void main() {
  runApp(Registro2());
}

class Registro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro IDX',
      theme: ThemeData(
        primarySwatch: Colors.green, // Color principal
        scaffoldBackgroundColor: Colors.grey[200], // Fondo de la página
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Color del AppBar
        ),
      ),
      home: RegistroScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class RegistroScreen extends StatefulWidget {
  @override
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final TextEditingController _telefonoController = TextEditingController();
  bool _comunicacionesConsent = false;
  bool _terminosConsent = false;

  void _crearCuenta() {
    if (!_terminosConsent) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Debe aceptar los términos y condiciones para continuar.'),
      ));
      return;
    }

    final String telefono = _telefonoController.text;
    print('Teléfono: $telefono');
    print('Consentimiento de comunicaciones: $_comunicacionesConsent');
    print('Aceptación de términos y condiciones: $_terminosConsent');

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Cuenta creada exitosamente'),
    ));

    // Navegación a la pantalla de inicio después de crear la cuenta
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Añade tu teléfono para poder contactarte solo cuando sea necesario, como avisarte de un problema con tu reserva, partido o actividad. (Opcional)',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _telefonoController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Teléfono',
                hintText: 'CO +57 3147107350',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              activeColor: Colors.green,
              title: Text(
                'Consiento expresamente que se procesen mis datos personales para recibir comunicaciones de marketing, como indicado en la política de privacidad que he leído',
                style: TextStyle(fontSize: 13, color: Colors.black87),
              ),
              value: _comunicacionesConsent,
              onChanged: (bool? value) {
                setState(() {
                  _comunicacionesConsent = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              activeColor: Colors.green,
              title: Text(
                'Confirmo y acepto los términos y condiciones y que he leído la política de privacidad',
                style: TextStyle(fontSize: 13, color: Colors.black87),
              ),
              value: _terminosConsent,
              onChanged: (bool? value) {
                setState(() {
                  _terminosConsent = value ?? false;
                });
              },
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: _crearCuenta,
              child: Text('siguiente'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Nueva pantalla de inicio
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Text(
          'Bienvenido a la pantalla de inicio',
          style: TextStyle(fontSize: 24, color: Colors.black87),
        ),
      ),
    );
  }
}

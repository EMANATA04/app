import 'package:flutter/material.dart';
import 'package:myapp/pages/principal.dart';
import 'package:myapp/pages/home2.dart'; // Ajusta la ruta a la ubicación de Home2
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Registro(), // Página inicial
    );
  }
}

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 182, 99),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0)),
                border: Border.all(color: Color.fromARGB(77, 93, 194, 110), width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/futbol.png'), // Asegúrate de que esta imagen exista
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Registro",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            // Campos de formulario
            Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 16, 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Nombre",
                      filled: true,
                      fillColor: Color(0xfffefeff),
                      prefixIcon: Icon(Icons.person, color: Color(0xff000000)),
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: BorderSide(color: Color(0xffffffff), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: BorderSide(color: Color(0xffffffff), width: 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Correo",
                      filled: true,
                      fillColor: Color(0xffffffff),
                      prefixIcon: Icon(Icons.mail, color: Color(0xff000000)),
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: BorderSide(color: Color(0xffffffff), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: BorderSide(color: Color(0xffffffff), width: 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Contraseña",
                      filled: true,
                      fillColor: Color(0xffffffff),
                      prefixIcon: Icon(Icons.lock, color: Color(0xff000000)),
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: BorderSide(color: Color(0xffffffff), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: BorderSide(color: Color(0xffffffff), width: 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Botón de registro
                  MaterialButton(
                    onPressed: () {
                      // Navegación a HomePage usando MaterialPageRoute
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home2(),
                        ),
                      );
                    },
                    color: Color.fromARGB(255, 139, 182, 99),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      side: BorderSide(color: Color.fromARGB(255, 150, 146, 146), width: 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Registrar",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    textColor: Color(0xffffffff),
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
            // Enlace para acceso a Login
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¿Ya tienes una cuenta?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      // Navegación a LoginPage/Home2 usando MaterialPageRoute
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Principal(), // o LoginPage si es tu pantalla de acceso
                        ),
                      );
                    },
                    child: Text(
                      "Acceso",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color.fromARGB(255, 139, 182, 99), // Cambia a verde
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla de HomePage
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text("Bienvenido a la página principal")),
    );
  }
}

// Pantalla de LoginPage
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Iniciar Sesión")),
      body: Center(child: Text("Página de inicio de sesión")),
    );
  }
}

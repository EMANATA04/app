import 'package:flutter/material.dart';
import 'package:myapp/pages/login1.dart';
import 'package:myapp/pages/registro.dart';
import 'package:myapp/pages/registro2.dart';

// Pantalla de registro
class RegistroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrarse')),
      body: Center(child: Text('Pantalla de registro')),
    );
  }
}

// Pantalla de inicio de sesión
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Iniciar Sesión')),
      body: Center(child: Text('Pantalla de inicio de sesión')),
    );
  }
}

// Pantalla principal con navegación y SnackBars
class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 147, 147),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0x1f000000),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned.fill(
              child: Image.asset(
                "images/verde.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40), // Espacio superior opcional
                // Imagen de fútbol en la parte superior
                Image(
                  image: AssetImage("images/futbol.png"),
                  height: 120, // Ajuste de tamaño según preferencia
                  width: 120,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10), // Aproximadamente 1 cm de espacio (10 px)
                // Texto "Patea y Juega"
                Text(
                  "Patea y Juega",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24, // Tamaño ajustado para resaltar el texto
                    color: Color.fromARGB(255, 14, 13, 13),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: Text(
                    "Únete a la mayor comunidad de jugadores de fútbol",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color.fromARGB(255, 15, 15, 15),
                    ),
                  ),
                ),
                Text(
                  "Y encuentra tu partido perfecto",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                SizedBox(height: 40),
                // Botón para Registrarse con funcionalidad de navegación
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 165, 214, 146),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registro()),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Registrarme",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Botón para Iniciar sesión con funcionalidad de navegación
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => login1()),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Iniciar sesión",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "o continuar con",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xfffbfbfb),
                  ),
                ),
                SizedBox(height: 10),
                // Íconos de redes sociales con SnackBars
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Conectarse con Facebook")),
                        );
                      },
                      child: Image.asset("images/facebook.png", height: 50, width: 50),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Conectarse con Apple")),
                        );
                      },
                      child: Image.asset("images/aple.jpg", height: 50, width: 50),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Conectarse con Google")),
                        );
                      },
                      child: Image.asset("images/google.png", height: 50, width: 50),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

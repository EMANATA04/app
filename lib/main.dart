import 'package:flutter/material.dart';
import 'package:myapp/pages/juegarapido.dart';
import 'package:myapp/pages/principal.dart';
import 'package:myapp/pages/login1.dart';
import 'package:myapp/pages/registro.dart';
import 'package:myapp/pages/Perfil1.dart';
import 'package:myapp/pages/chat.dart';
import 'package:myapp/pages/registro2.dart';
import 'package:myapp/pages/home2.dart';
import 'package:myapp/pages/cierre.dart';
import 'package:myapp/pages/competiciones.dart';
import 'package:myapp/pages/reserva.dart';
import 'package:myapp/pages/local.dart';
import 'package:myapp/pages/editarperf.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Principal(), // Updated to use Login as the home
    );
  }
}

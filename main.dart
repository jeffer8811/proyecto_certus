import 'package:flutter/material.dart';
import 'homepage.dart';
import 'quiz.dart';
import 'resultado.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatefulWidget   {
  const MiAplicacion({super.key});

  @override
  State<MiAplicacion> createState() => _MiAplicacionState();
}

class _MiAplicacionState extends State<MiAplicacion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => Homepage(),
        'Quiz':(context) => Quiz(),
        Resultado.routeName: (context)=> Resultado(),
      },
    );
  }
}



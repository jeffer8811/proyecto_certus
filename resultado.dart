import 'package:flutter/material.dart';

class Argumentos {
  int aciertos = 0;

  Argumentos(this.aciertos); //constructor
}

class Resultado extends StatelessWidget {
  static const routeName = 'Resultado';

  const Resultado({Key? key});

  @override
  Widget build(BuildContext context) {
    final argumentos =
        ModalRoute.of(context)?.settings.arguments as Argumentos;

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Resultado',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Usted acertó ${argumentos.aciertos} de 10 Preguntas',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Quiz');
                },
                child: Text(
                  'Jugar Nuevamente',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Cambia el color del botón a verde
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

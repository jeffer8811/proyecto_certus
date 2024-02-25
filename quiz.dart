import 'package:flutter/material.dart';
import 'resultado.dart';
import 'quiz_datos.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int preguntaNumero = 1;
  int aciertos = 0;
  int errores = 0;

  List<Color> coloresRespuestas = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    quiz.shuffle();
    void responder(int respuestaNumero) {
      setState(() {
        if (quiz[preguntaNumero - 1]['alternativa_correcta'] ==
            respuestaNumero) {
          print('acertó');
          aciertos++;
        } else {
          print('erró');
          errores++;
        }

        print('aciertos totales: $aciertos errores totales: $errores');

        if (preguntaNumero == 10) {
          print('Terminó el Quiz');
          Navigator.pushNamed(context, 'Resultado',
              arguments: Argumentos(aciertos));
        } else {
          print("entrando");
          preguntaNumero++; //ESTE HACE QUE PASE A LA SIGUIENTE PREGUNTA
          print(preguntaNumero);
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz')),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text('Pregunta $preguntaNumero de 10',
                  style: TextStyle(fontSize: 20)
                ),
              ),
              Text('Pregunta: ' + quiz[preguntaNumero - 1]['pregunta'],
                style: TextStyle(fontSize: 20)
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('presionado');
                    responder(1);
                  },
                  child: Text(quiz[preguntaNumero - 1]['respuestas'][0],
                    style: TextStyle(fontSize: 20)
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: coloresRespuestas[0], // Color de fondo del botón
                    onPrimary: Colors.white, // Color del texto del botón
                    padding: EdgeInsets.all(20), // Padding del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('presionado');
                    responder(2);
                  },
                  child: Text(quiz[preguntaNumero - 1]['respuestas'][1],
                    style: TextStyle(fontSize: 20)
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: coloresRespuestas[1], // Color de fondo del botón
                    onPrimary: Colors.white, // Color del texto del botón
                    padding: EdgeInsets.all(20), // Padding del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('presionado');
                    responder(3);
                  },
                  child: Text(quiz[preguntaNumero - 1]['respuestas'][2],
                    style: TextStyle(fontSize: 20)
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: coloresRespuestas[2], // Color de fondo del botón
                    onPrimary: Colors.white, // Color del texto del botón
                    padding: EdgeInsets.all(20), // Padding del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('presionado');
                    responder(4);
                  },
                  child: Text(quiz[preguntaNumero - 1]['respuestas'][3],
                    style: TextStyle(fontSize: 20)
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: coloresRespuestas[3], // Color de fondo del botón
                    onPrimary: Colors.white, // Color del texto del botón
                    padding: EdgeInsets.all(20), // Padding del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    ),
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

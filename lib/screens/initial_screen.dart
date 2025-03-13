import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: [
            Task('Aprender Flutter', 'assets/images/dash.png', 4),
            Task('Andar de Bike', 'assets/images/bike.jpeg', 2),
            Task('Meditar', 'assets/images/meditar.jpeg', 5),
            Task('Ler', 'assets/images/ler.jpg', 3),
            Task('Jogar', 'assets/images/jogar.jpg', 1),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(
          Icons.remove_red_eye,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tasks_app/components/task.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({Key? key}) : super(key: key);
  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
                'Aprender Flutter',
                'assets/images/dash.png',
                3),
            Task(
                'Ir para a academia',
                'assets/images/academia.jpg',
                3),
            Task(
                'Jogar videogame',
                'assets/images/videogame.jpg',
                1),
            Task(
                'Meditar',
                'assets/images/meditar.jpeg',
                4),
            Task(
                'Fazer o TCC',
                'assets/images/estudar.jpg',
                5),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'questao.dart';
import 'repositorio_questao.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz APP",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Questao> perguntas = QuestaoRepositorio().geraQuestoes(5);

  int perguntaAtual = 0;

  void proximaPergunta() {
    setState(() {
      if (perguntaAtual < perguntas.length - 1) {
        perguntaAtual++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz APP"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pergunta ${perguntaAtual + 1}/${perguntas.length}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 10,
                thickness: 2.0,
                color: Colors.black26,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  perguntas[perguntaAtual].enunciado,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 2.0,
                color: Colors.black26,
              ),
              ...perguntas[perguntaAtual].opcoes.map(
                (opcao) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(
                          color: Colors.white,
                          width: 3.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2.0),
                            blurRadius: 5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        opcao,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  //ir para a próxima pergunta
                  proximaPergunta();
                  print("Clicou na próxima ${perguntaAtual}");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF6CE4FF),
                    border: Border.all(
                      color: Color(0xFFB04BC4),
                      width: 3.0,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2.0),
                        blurRadius: 5,
                      )
                    ],
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Próxima"),
                      Icon(
                        Icons.arrow_right,
                        size: 50,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

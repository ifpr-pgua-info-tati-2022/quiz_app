import 'questao.dart';

List<Map> _conjuntoQuestoes = [
  {
    "enunciado": "Qual a capital do Brasil?",
    "respostaCorreta": "Brasília",
    "outrasOpcoes": ["São Paulo", "Rio de Janeiro", "Curitiba"]
  },
  {
    "enunciado": "Qual a capital do Paraná?",
    "respostaCorreta": "Curitiba",
    "outrasOpcoes": ["São Paulo", "Rio de Janeiro", "Porto Alegre"]
  },
  {
    "enunciado": "Onde está localizado o Brasil?",
    "respostaCorreta": "América do Sul",
    "outrasOpcoes": ["Africa", "Europa", "Ásia"]
  },
  {
    "enunciado": "Em que ano o Brasil foi encontrado?",
    "respostaCorreta": "1500",
    "outrasOpcoes": ["1800", "1200", "1900"]
  },
  {
    "enunciado": "Em que ano a seleção brasileira conquistou o tetra?",
    "respostaCorreta": "1994",
    "outrasOpcoes": ["1995", "1990", "1998"]
  },
  {
    "enunciado": "Qual o principal ingrediente do omelete?",
    "respostaCorreta": "Ovo",
    "outrasOpcoes": ["Queijo", "Manteiga", "Farinha"]
  },
  {
    "enunciado": "Qual a temperatura de ebulição da água a 1 atm?",
    "respostaCorreta": "100 ºC",
    "outrasOpcoes": ["50 ºC", "150 ºC", "95 ºC"]
  },
];

class QuestaoRepositorio {
  List<Questao> geraQuestoes(int qtde) {
    List<Questao> questoes = [];

    _conjuntoQuestoes.shuffle();

    for (int i = 0; (i < qtde) && (i < _conjuntoQuestoes.length); i++) {
      var selecionada = _conjuntoQuestoes[i];

      var questao = Questao(
          enunciado: selecionada["enunciado"],
          respostaCorreta: selecionada["respostaCorreta"],
          opcoes: [
            ...selecionada["outrasOpcoes"],
            selecionada["respostaCorreta"]
          ]..shuffle());

      questoes.add(questao);
    }

    return questoes;
  }
}

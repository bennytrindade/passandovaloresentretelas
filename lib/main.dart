import 'package:flutter/material.dart';
import 'package:passando_valores_entre_telas/telalista.dart';
import 'package:passando_valores_entre_telas/tarefa.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaLista(
        tarefas: [
          Tarefa("Cachorro", "Dar banho no caramelo"),
          Tarefa("Contas", "Pagar"),
          Tarefa("Vassoura", "Varrer a casa"),
          Tarefa("Peixe", "Dar comida pro peixe"),
        ],
      ),
    );
  }
}

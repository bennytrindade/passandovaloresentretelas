import 'package:flutter/material.dart';
import 'tarefa.dart';

class TelaDetalhe extends StatelessWidget {
  const TelaDetalhe({super.key, required this.tarefa});

  final Tarefa tarefa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(tarefa.titulo),
      ),
      body: Padding(padding: EdgeInsets.all(20), child: Text(tarefa.descricao)),
    );
  }
}

import 'package:flutter/material.dart';
import 'tarefa.dart';
import 'teladetalhe.dart';

class TelaLista extends StatelessWidget {
  const TelaLista({super.key, required this.tarefas});
  final List<Tarefa> tarefas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Lista de Tarefas"),
      ),
      body: ListView.builder(
        itemCount: tarefas.length,
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(Icons.task_alt),
              title: Text(tarefas[index].titulo),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaDetalhe(tarefa: tarefas[index]),
                  ),
                );
              },
            ),
      ),
    );
  }
}

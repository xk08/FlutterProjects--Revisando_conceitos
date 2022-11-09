// ignore_for_file: avoid_print

/* ESTUDO: PÁGINA SEM ESTADO */
/* Pagina/Widget estática que não faz alteração de estado no flutter */

import 'package:flutter/material.dart';
import 'package:states_project/components/button_widget.dart';

class SemEstadoPageWidget extends StatelessWidget {
  //Declarando variáveis para o construtor
  final Color? color;
  final String decricao;
  final Widget? elementoFilho; //Opcional

  const SemEstadoPageWidget({
    super.key,
    required this.color,
    required this.decricao,
    this.elementoFilho,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Página sem estado"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              decricao,
              style: const TextStyle(
                fontSize: 25.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            buttonWidget(
              "Clique aqui broo",
              const Color.fromARGB(255, 255, 174, 0),
            ),
          ],
        ),
      ),
    );
  }
}

/* Exemplo - Função simples em Dart */
executaBotao(String textoRecebido) {
  print("O texto recebido foi $textoRecebido");
  return textoRecebido;
}

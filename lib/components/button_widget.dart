// ignore_for_file: avoid_print

/* Exemplo: Widget em dart */
import 'package:flutter/material.dart';
import 'package:states_project/pages/sem_estado_page.dart';

buttonWidget(String textoBotao, Color? colorButton) {
  String? textoRetorno;

  return Builder(
    builder: (_) {
      return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colorButton!),
        ),
        autofocus: true,
        onPressed: () => {
          textoRetorno = executaBotao("Teste"),
          print("O valor pego foi $textoRetorno"),
        },
        child: Text(textoBotao),
      );
    },
  );
}

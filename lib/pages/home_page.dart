import 'package:flutter/material.dart';
import 'package:states_project/pages/com_estado_page.dart';
import 'package:states_project/pages/contador_page.dart';
import 'package:states_project/pages/sem_estado_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Voltado ao flutter"),
      ),
      backgroundColor: const Color.fromARGB(255, 152, 106, 230),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textWidget("Contador de cliques"),
            buttonWidget(
              const MyHomePage(
                title: 'Contador de cliques',
              ),
              context,
              "Abrir contador",
              const Color.fromARGB(255, 92, 148, 43),
            ),
            const SizedBox(height: 20),
            textWidget("Página sem estado"),
            buttonWidget(
              const SemEstadoPageWidget(
                decricao: "Pagina sem estado",
                color: Colors.green,
              ),
              context,
              "Abrir pagina s/ estado",
              const Color.fromARGB(255, 53, 168, 225),
            ),
            const SizedBox(height: 20),
            textWidget("Página com estado"),
            buttonWidget(
              const ComEstadoPage(),
              context,
              "Abrir pagina c/ estado",
              const Color.fromARGB(255, 163, 122, 32),
            )
          ],
        ),
      ),
    );
  }
}

textWidget(String tituloTexto) {
  return Builder(builder: (_) {
    return Column(
      children: [
        Text(
          tituloTexto,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18.0),
        ),
        const SizedBox(height: 10),
      ],
    );
  });
}

buttonWidget(
    Widget goToPage, BuildContext context, String tituloBotao, Color corBotao) {
  return Builder(builder: (_) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(corBotao),
      ),
      autofocus: true,
      onPressed: () => {
        Navigator.push(context, MaterialPageRoute(builder: (_) => goToPage))
      },
      child: Text(tituloBotao),
    );
  });
}

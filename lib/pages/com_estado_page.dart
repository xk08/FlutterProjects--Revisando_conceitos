import 'package:flutter/material.dart';

class ComEstadoPage extends StatefulWidget {
  const ComEstadoPage({super.key});

  @override
  State<ComEstadoPage> createState() => _ComEstadoPageState();
}

class _ComEstadoPageState extends State<ComEstadoPage> {
  String texto = "Seja Bem-vind@";
  String tituloPage = "Alterando o estado da página";

  //Estilos Alterados no Dark-Mode
  bool light = false;
  Color backgroundColorTop = Colors.amber;
  Color backgroundColorBody = Colors.amberAccent;
  Color buttonColor = const Color.fromARGB(255, 226, 111, 28);
  Color textBodyColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorBody,
      appBar: AppBar(
        backgroundColor: backgroundColorTop,
        title: Text(tituloPage),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: TextStyle(fontSize: 25.0, color: textBodyColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              ),
              autofocus: true,
              onPressed: () => {
                setState(
                  () {
                    texto = "Nice!! Esse é o novo texto Broo!";
                    tituloPage = "Novo titulo fella!";
                  },
                )
              },
              child: const Text(
                "Clique para executar a magia",
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Trocar o tema da página",
              style: TextStyle(fontSize: 15.0, color: textBodyColor),
              textAlign: TextAlign.center,
            ),
            Switch(
              value: light,
              inactiveThumbColor: Colors.black,
              activeColor: Colors.white,
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });

                if (light) {
                  backgroundColorTop = Colors.black;
                  backgroundColorBody =
                      const Color.fromARGB(115, 134, 132, 132);
                  buttonColor = Colors.black;
                  textBodyColor = Colors.white;
                } else {
                  backgroundColorTop = Colors.amber;
                  backgroundColorBody = Colors.amberAccent;
                  buttonColor = const Color.fromARGB(255, 226, 111, 28);
                  textBodyColor = Colors.black;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

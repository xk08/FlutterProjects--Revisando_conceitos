import 'package:flutter/material.dart';
import 'package:states_project/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'States Project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:
          const HomePage() /* const SemEstadoPageWidget(
        color: Color.fromARGB(149, 192, 206, 158),
        decricao: "Relembrando a base do Flutter",
      ) */
      ,
    );
  }
}

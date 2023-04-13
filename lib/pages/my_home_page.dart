import 'package:flutter/material.dart';
import 'package:uso_navigator/pages/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("uso basico del Navigator"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSecondPage(context),
          child: const Text("Mostrar Segunda Pagina"),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    //Agregando ruta a la variable route, usando la funcion materialPageRoute
    final route = MaterialPageRoute(
      builder: (BuildContext context) => const SecondPage(
        name: "Cristian",
      ),
    );
    Navigator.of(context).push(route);
  }
}

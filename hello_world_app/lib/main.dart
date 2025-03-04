import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/Counter/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //quita etiqueta de debug en la aplicacion
      theme: ThemeData(
        useMaterial3: true, //es para activar el material 3
        colorSchemeSeed:
            Colors.blue, //para crear paleta de colores automatica de flutter
      ),
      home: const CounterFuncionsScreen(),
    );
  }
}

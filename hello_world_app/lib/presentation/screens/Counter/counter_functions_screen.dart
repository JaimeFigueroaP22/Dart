import 'package:flutter/material.dart';

class CounterFuncionsScreen extends StatefulWidget {
  const CounterFuncionsScreen({super.key});

  @override
  State<CounterFuncionsScreen> createState() => _CounterFuncionsScreenState();
}

class _CounterFuncionsScreenState extends State<CounterFuncionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Functions'),
      ), //nombre que aparece arriba de la pantalla
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ), //text style es para darle stylo al texto
            ),
            /* if (clickCounter == 1)
              Text('Click', style: TextStyle(fontSize: 25)),
            if (clickCounter != 1)
              Text('Clicks', style: TextStyle(fontSize: 25)),
            */
            //otra resolucion par que cuando sea uno salga la s
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //boton
        onPressed: () {
          clickCounter += 1;
          setState(() {}); // esto es para que se renderice la pantalla
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}

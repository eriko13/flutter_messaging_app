import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emed esta trabajando en el inicio de sesion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
          title: 'Emed esta trabajando en el inicio de sesion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> listachistosa = [
    '',
    '',
    '',
    '',
    '',
    'Por el culo te la inco',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'Entre más me la mamas más me crece',
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() async {
    setState(() {
      _counter--;
    });
  }

  void _showInputField() async {
    TextEditingController chisteController = TextEditingController();
    String? respuesta = await showDialog<String>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 200,
        child: SimpleDialog(title: Text('Agrega un chiste: '),
            // actions: [
            //   TextButton(
            //     onPressed: () =>
            //         Navigator.of(context).pop<String>(chisteController.text),
            //     child: Text('f'),
            //   ),
            // ],

            children: [
              Center(
                child: SizedBox(
                  width: 300,
                  height: 200,
                  child: TextFormField(
                    controller: chisteController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[700],
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                ,
                onPressed: () =>
                    Navigator.of(context).pop<String>(chisteController.text),
                child: Text('f'),
              ),
            ]),
      ),
    );

    print(respuesta);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _counter < 0 ||
                      _counter > listachistosa.length - 1 ||
                      listachistosa[_counter].isEmpty
                  ? 'You have pushed the button this many times:'
                  : listachistosa[_counter],
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: FloatingActionButton(
              onPressed: _showInputField,
              tooltip: 'Agregar chiste',
              child: const Icon(Icons.add_comment),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Incrementar',
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: FloatingActionButton(
              onPressed: _decreaseCounter,
              tooltip: 'Restar',
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}

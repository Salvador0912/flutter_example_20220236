import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Método build que define la estructura de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Configuración del tema de la aplicación
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Página principal de la aplicación
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  // Método que crea el estado mutable para MyHomePage
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Estado mutable para MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Función que incrementa el contador y solicita una reconstrucción del widget
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Método que define la estructura visual de la página
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Texto informativo
            const Text(
              'You have pushed the button this many times:',
            ),
            // Muestra el valor del contador
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

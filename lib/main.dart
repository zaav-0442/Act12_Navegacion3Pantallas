import 'package:flutter/material.dart';
import 'package:myapp/paginas/pag1.dart';
import 'package:myapp/paginas/pag2.dart';
import 'package:myapp/paginas/pag3.dart';

void main() {
  runApp(const MiAppNavegacion());
}

class MiAppNavegacion extends StatelessWidget {
  const MiAppNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas Nombradas 6°J',
      // Definimos la ruta inicial
      initialRoute: '/',
      // Mapa de rutas
      routes: {
        '/': (context) => const PrimeraPagina(),
        '/segunda': (context) => const SegundaPagina(),
        '/tercera': (context) => const TerceraPagina(),
      },
    );
  }
}

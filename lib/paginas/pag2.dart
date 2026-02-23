import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Extendemos el fondo para que el gradiente ocupe toda la pantalla
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Segunda Página 6°J",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // Transparente para congruencia
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          // Gradiente que transiciona de Negro a un Rosa muy oscuro (Vino)
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xFF2D0019)], 
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contenedor con sombra para la imagen (Efecto Tarjeta)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFE4007F).withOpacity(0.3),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://raw.githubusercontent.com/zaav-0442/Act12_Navegacion3Pantallas/refs/heads/main/Faz-Watch.jpg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Texto descriptivo sutil
            const SizedBox(height: 20),
            // Botón estilo Neón Rosa Mexicano
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE4007F), // Rosa Mexicano
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 12,
                shadowColor: const Color(0xFFE4007F).withOpacity(0.6),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/tercera');
              },
              icon: const Icon(Icons.arrow_forward_ios, size: 18),
              label: const Text(
                "SIGUIENTE PÁGINA",
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
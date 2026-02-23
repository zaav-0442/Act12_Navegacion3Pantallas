import 'package:flutter/material.dart';

class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos el color para no repetir el código ARGB
    const neonColor = Color.fromARGB(255, 1, 183, 255);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Tercera Página 6°J",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xFF001A2F)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // --- EL ÍCONO CON EFECTO NEÓN ---
            const Icon(
              Icons.check_circle_outline,
              size: 100,
              color: neonColor,
              shadows: [
                // Sombra interna (brillo fuerte y cercano)
                Shadow(
                  blurRadius: 20.0,
                  color: neonColor,
                  offset: Offset(0, 0),
                ),
                // Sombra externa (resplandor suave y amplio)
                Shadow(
                  blurRadius: 50.0,
                  color: neonColor,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Zoé Aranza Alva Vazquez 6°J",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: neonColor,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 15,
                shadowColor: neonColor.withOpacity(0.5),
              ),
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text(
                "VOLVER",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
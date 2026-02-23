import 'package:flutter/material.dart';

class PrimeraPagina extends StatelessWidget {
  const PrimeraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos el color naranja para reutilizarlo fácilmente
    const accentOrange = Color.fromARGB(255, 255, 153, 0);

    return Scaffold(
      extendBodyBehindAppBar: true, // Para que el gradiente suba hasta arriba
      appBar: AppBar(
        title: const Text(
          "Primera Página 6°J",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // AppBar moderna y transparente
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          // Gradiente de Negro a un Naranja muy profundo (café/óxido oscuro)
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xFF2A1500)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contenedor redondeado naranja con "Glow" (Resplandor)
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: accentOrange,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: accentOrange.withOpacity(0.4),
                    blurRadius: 25,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Contenedor 6°J",
                  style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Botón estilizado para que sea congruente con los demás
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: accentOrange,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 10,
                shadowColor: accentOrange.withOpacity(0.5),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/segunda');
              },
              child: const Text(
                "COMENZAR",
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
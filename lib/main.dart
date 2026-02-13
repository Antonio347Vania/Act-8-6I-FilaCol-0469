import 'package:flutter/material.dart';

void main() => runApp(const AppSoriana());

class AppSoriana extends StatelessWidget {
  const AppSoriana({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Soriana Antonio",
      home: ProductosFilaColumna(), // Se agregaron los paréntesis ()
    );
  }
} // Fin clase AppSoriana

class ProductosFilaColumna extends StatelessWidget {
  const ProductosFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- AppBar con diseño Soriana ---
      appBar: AppBar(
        title: const Text(
          'Soriana Anotonio',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.shopping_cart, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 236, 188, 114), // Naranja bajito
                Color.fromARGB(255, 236, 188, 114),
              ],
            ),
          ),
        ),
      ),
      
      // --- Cuerpo con Filas y Columnas ---
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Primera fila: Naranja y Amarillo
              Expanded(
                child: Row(
                  children: [
                    _buildBox(Colors.orange, "Frutas", Icons.apple),
                    _buildBox(Colors.yellow[600]!, "Panadería", Icons.bakery_dining),
                  ],
                ),
              ),
              // Segunda fila: Magenta y Verde
              Expanded(
                child: Row(
                  children: [
                    _buildBox(Colors.purple, "Lácteos", Icons.egg_alt),
                    _buildBox(Colors.green, "Verduras", Icons.eco),
                  ],
                ),
              ),
              // Tercera fila: Azul y Rojo
              Expanded(
                child: Row(
                  children: [
                    _buildBox(Colors.blue, "Bebidas", Icons.local_drink),
                    _buildBox(Colors.red, "Carnes", Icons.kebab_dining),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget auxiliar para no repetir código de los contenedores
  Widget _buildBox(Color color, String texto, IconData icono) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0), // Redondeado
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icono, color: Colors.white, size: 40),
              const SizedBox(height: 8),
              Text(
                texto,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
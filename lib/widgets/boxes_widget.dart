import 'package:flutter/material.dart';
import 'package:gestion_inventarios_nfc/data/boxes_provider.dart';
import 'package:provider/provider.dart';

class BoxesWidget extends StatelessWidget {
  final int boxIndex;

  const BoxesWidget({super.key, required this.boxIndex});

  @override
  Widget build(BuildContext context) {
// Acceder a BoxesProvider
    var boxesProvider = Provider.of<BoxesProvider>(context);

    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 120,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Caja ${boxIndex.toString()}'),
            const SizedBox(height: 10), // Espacio entre el texto y el botón
            FloatingActionButton(
              onPressed: () {
                // Eliminar la última caja
                boxesProvider.removeBox();
              },
              child: const Icon(Icons.remove),
              mini: true, // Para que el botón sea más pequeño
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gestion_inventarios_nfc/data/boxes_provider.dart';
import 'package:gestion_inventarios_nfc/widgets/boxes_widget.dart';
import 'package:provider/provider.dart';

class BoxesScreen extends StatefulWidget {
  const BoxesScreen({super.key});

  @override
  State<BoxesScreen> createState() => _BoxesScreenState();
}

class _BoxesScreenState extends State<BoxesScreen> {
  @override
  Widget build(BuildContext context) {
    // Acceder a BoxesProvider
    var boxesProvider = Provider.of<BoxesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cajas"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(boxesProvider.boxes.length, (index) {
          return Center(
              child: GestureDetector(
            onTap: () {
              // Aquí puedes agregar lo que quieras imprimir al hacer clic en una caja
              print(
                  'Caja presionada UUID: ${boxesProvider.boxes[index].uuid}\nListado de cosas: ${boxesProvider.boxes[index].listaCosas}\nCantidad de cosas: ${boxesProvider.boxes[index].cantidadCosas}\nEspacio disponible: ${boxesProvider.boxes[index].espacioDisponible}\n');
            },
            child: BoxesWidget(
              boxIndex: index,
            ),
          ));
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Agregar una nueva caja
              boxesProvider.addBox();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

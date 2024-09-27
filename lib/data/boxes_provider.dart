import 'package:flutter/material.dart';
import 'package:gestion_inventarios_nfc/models/BoxModel.dart';
import 'package:uuid/uuid.dart'; // Para generar UUID

class BoxesProvider extends ChangeNotifier {
  // Lista de cajas de tipo BoxModel
  List<BoxModel> _boxes = [];

  // Getter para obtener la lista de cajas
  List<BoxModel> get boxes => _boxes;

  // Método para agregar una nueva caja
  void addBox() {
    // Generamos un UUID para la nueva caja
    var uuid = const Uuid().v4();

    // Creamos una nueva instancia de BoxModel con valores predeterminados
    BoxModel newBox = BoxModel(
      uuid: uuid,
      listaCosas: [],
      cantidadCosas: 0,
      espacioDisponible:
          10, // Espacio disponible inicial, ajusta según lo que necesites
    );

    // Añadimos la nueva caja a la lista
    _boxes.add(newBox);
    notifyListeners(); // Notifica a los widgets que están escuchando para redibujar
  }

  // Método para eliminar la última caja
  void removeBox() {
    if (_boxes.isNotEmpty) {
      _boxes.removeLast();
      notifyListeners();
    }
  }

  // Método para obtener una caja por su índice
  BoxModel getBox(int index) {
    return _boxes[index];
  }
}

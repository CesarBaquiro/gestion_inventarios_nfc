class BoxModel {
  String uuid; // Identificador único de la caja
  List<String> listaCosas; // Lista de elementos dentro de la caja
  int cantidadCosas; // Cantidad total de cosas en la caja
  int espacioDisponible; // Espacio disponible en la caja

  // Constructor
  BoxModel({
    required this.uuid,
    required this.listaCosas,
    required this.cantidadCosas,
    required this.espacioDisponible,
  });

  // Método para agregar cosas a la caja
  void agregarCosa(String cosa) {
    if (espacioDisponible > 0) {
      listaCosas.add(cosa);
      cantidadCosas++;
      espacioDisponible--;
    } else {
      print('No hay espacio disponible en la caja.');
    }
  }

  // Método para eliminar cosas de la caja
  void eliminarCosa(String cosa) {
    if (listaCosas.contains(cosa)) {
      listaCosas.remove(cosa);
      cantidadCosas--;
      espacioDisponible++;
    } else {
      print('La cosa no está en la caja.');
    }
  }

  @override
  String toString() {
    return 'BoxModel(UUID: $uuid, Cosas: $listaCosas, Cantidad: $cantidadCosas, Espacio Disponible: $espacioDisponible)';
  }
}

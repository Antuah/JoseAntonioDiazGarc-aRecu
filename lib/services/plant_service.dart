import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/plant.dart';

class PlantService {
  Future<List<Plant>> getPlants() async {
    try {
      // Simular un pequeño retardo de red
      await Future.delayed(const Duration(milliseconds: 800));
      
      final String response = await rootBundle.loadString('assets/plants.json');
      final List<dynamic> data = json.decode(response);
      
      return data.map((json) => Plant.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Error al cargar las plantas: $e');
    }
  }
}

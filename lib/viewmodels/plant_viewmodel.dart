import 'package:flutter/foundation.dart';
import '../models/plant.dart';
import '../services/plant_service.dart';

class PlantViewModel extends ChangeNotifier {
  final PlantService _plantService = PlantService();
  
  List<Plant> _plants = [];
  bool _isLoading = false;
  String? _error;

  List<Plant> get plants => _plants;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchPlants() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _plants = await _plantService.getPlants();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

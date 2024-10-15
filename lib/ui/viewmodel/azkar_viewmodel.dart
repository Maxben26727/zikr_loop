import 'package:flutter/material.dart';

import '../../data/local/entity/zikr_entity.dart';
import '../../data/repository/azkar_repository.dart';

class AzkarViewModel extends ChangeNotifier {
  final AzkarRepository _azkarRepository;
  final List<ZikrEntity> _azkarList = [];
  ZikrEntity? activeZikr;

  int _currentPage = 0;
  bool _isLoading = false;
  bool _hasMore = true;

  AzkarViewModel(this._azkarRepository) {
    getActiveZikr();
  }

  /// Getter for Azkar list
  List<ZikrEntity> get azkarList => _azkarList;

  /// Getter for loading status
  bool get isLoading => _isLoading;

  /// Getter to check if more data is available
  bool get hasMore => _hasMore;

  void getActiveZikr() {
    String? activeZikrId = _azkarRepository.getActiveAzkar();
    if (activeZikrId != null) {
      activeZikr = _azkarRepository.getAzkarById(activeZikrId);
    }
  }

  /// Fetch and load more Azkar (Pagination)
  Future<void> loadMoreAzkar({int pageSize = 20}) async {
    if (_isLoading || !_hasMore) return;

    _isLoading = true;
    notifyListeners();

    try {
      final newAzkar =
          await _azkarRepository.fetchPaginatedAzkar(_currentPage, pageSize);

      if (newAzkar.isEmpty) {
        _hasMore = false; // No more data available
      } else {
        _azkarList.addAll(newAzkar);
        _currentPage++; // Move to the next page
      }
    } catch (e) {
      // Handle error, for example: logging or showing error message
      print('Error fetching Azkar: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Refresh Azkar list (optional: to reload data from the start)
  Future<void> refreshAzkar({int pageSize = 20}) async {
    _azkarList.clear();
    _currentPage = 0;
    _hasMore = true;
    await loadMoreAzkar(pageSize: pageSize);
  }

  /// Add a new Azkar
  Future<void> addAzkar(ZikrEntity newAzkar) async {
    await _azkarRepository.addAzkar(newAzkar);
    _azkarList.add(newAzkar); // Add to the current list
    notifyListeners();
  }

  Future<void> updateActiveZikr(String id) async {
    await _azkarRepository.updateActiveZikr(id);
    getActiveZikr();
    notifyListeners();
  }

  /// Update an existing Azkar
  Future<void> updateAzkar(ZikrEntity updatedAzkar) async {
    await _azkarRepository.updateAzkar(updatedAzkar);
    // Update the local list with the updated entity
    final index = _azkarList.indexWhere((azkar) => azkar.id == updatedAzkar.id);
    if (index != -1) {
      _azkarList[index] = updatedAzkar;
      notifyListeners();
    }
  }

  /// Delete an Azkar by ID
  Future<void> deleteAzkar(String id) async {
    await _azkarRepository.deleteAzkar(id);
    // Remove from the local list
    _azkarList.removeWhere((azkar) => azkar.id == id);
    notifyListeners();
  }

  /// Fetch a single Azkar by its ID
  ZikrEntity? getAzkarById(String id) {
    return _azkarRepository.getAzkarById(id);
  }

  String? getActiveAzkarId() {
    return _azkarRepository.getActiveAzkar();
  }
}

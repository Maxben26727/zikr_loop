import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../local/entity/zikr_entity.dart';

class AzkarRepository {
  final Box<ZikrEntity> _azkarBox;
  final Box<ActiveZikrEntity> _activeAzkarBox;

  AzkarRepository(this._azkarBox, this._activeAzkarBox);

  /// Fetch paginated Azkar data
  Future<List<ZikrEntity>> fetchPaginatedAzkar(
      int pageNumber, int pageSize) async {
    final totalItems = _azkarBox.length;
    final startIndex = pageNumber * pageSize;
    final endIndex = startIndex + pageSize;

    if (startIndex >= totalItems) {
      return []; // No more data to fetch
    }

    final List<ZikrEntity> paginatedAzkar = [];

    for (int i = startIndex; i < endIndex && i < totalItems; i++) {
      final azkar = _azkarBox.getAt(i);
      if (azkar != null) {
        paginatedAzkar.add(azkar);
      }
    }

    return paginatedAzkar;
  }

  /// Add new Azkar
  Future<void> addAzkar(ZikrEntity azkarEntity) async {
    await _azkarBox.put(azkarEntity.id, azkarEntity);
  }

  /// Get a single Azkar by id
  ZikrEntity? getAzkarById(String id) {
    return _azkarBox.get(id);
  }

  /// Update Azkar
  Future<void> updateAzkar(ZikrEntity azkarEntity) async {
    await _azkarBox.put(azkarEntity.id, azkarEntity);
  }

  /// Delete Azkar
  Future<void> deleteAzkar(String id) async {
    await _azkarBox.delete(id);
  }

  /// Clear all Azkar entries
  Future<void> clearAzkar() async {
    await _azkarBox.clear();
  }

  Future<void> updateActiveZikr(String zikrId) async {
    //_activeAzkarBox.clear();
    await _activeAzkarBox.put(0, ActiveZikrEntity(id: zikrId));

    if (kDebugMode) {
      print(_activeAzkarBox.isEmpty);
    }
  }

  String? getActiveAzkar() {
    if (_activeAzkarBox.isNotEmpty) {
      return _activeAzkarBox.getAt(0)?.id;
    } else {
      return null; // Handle the case when the box is empty.
    }
  }
}

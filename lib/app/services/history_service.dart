import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../controllers/controllers_exports.dart';

class HistoryService {
  final historyController = GetIt.I.get<LicenseController>();

  static SharedPreferences? inMemory;

  static Future init() async {
    inMemory = await SharedPreferences.getInstance();
  }

  Future<void> saveHistory() async {
    final inMemory = await SharedPreferences.getInstance();
    const key = 'history';
    final value = json.encode(historyController.historyParkingLotsListInAndOut);
    inMemory.setString(key, value);
  }

  Future<void> loadHistory() async {
    final inMemory = await SharedPreferences.getInstance();
    const key = 'history';
    final value = inMemory.getString(key);
    if (value != null) {
      final history = json.decode(value);
      historyController.historyParkingLotsListInAndOut.addAll(history);
    }
  }

  Future<void> cleanHistory() async {
    final inMemory = await SharedPreferences.getInstance();
    inMemory.clear();
  }
}

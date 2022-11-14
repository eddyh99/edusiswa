import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ulife/models/lokasi_model.dart';

class LokasiController {
  static late List<Lokasi> provinsi;
  static late List<Lokasi> kabupatenKota;
  static late List<Lokasi> kecamatan;

  static LokasiController? _instance;
  factory LokasiController() => _instance ??= LokasiController._();
  LokasiController._();

  static Future<void> initialize() async {
    rootBundle.loadString("assets/locations/provinsi.json").then((response) {
      final List<Map<String, String>> json = jsonDecode(response);
      for (Map<String, String> data in json) {
        provinsi.add(Lokasi.fromMap(data));
        rootBundle
            .loadString("assets/locations/kabupaten/${data["id"]}.json")
            .then((response) {
          final List<Map<String, String>> json = jsonDecode(response);
          for (Map<String, String> data in json) {
            kabupatenKota.add(Lokasi.fromMap(data));
            rootBundle
                .loadString("assets/locations/kecamatan/${data["id"]}.json")
                .then((response) {
              final List<Map<String, String>> json = jsonDecode(response);
              for (Map<String, String> data in json) {
                kecamatan.add(Lokasi.fromMap(data));
              }
            });
          }
        });
      }
    });
  }
}

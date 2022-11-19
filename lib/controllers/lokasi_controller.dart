import 'dart:convert';

import 'package:flutter/services.dart';
import '../models/lokasi_model.dart';
import '../utils/functions.dart';

class LokasiController {
  static late List<Lokasi> provinsi;
  static late List<Map<String, List<Lokasi>>> kabupatenKota;
  static late List<Map<String, List<Lokasi>>> kecamatan;

  static LokasiController? _instance;
  factory LokasiController() => _instance ??= LokasiController._();
  LokasiController._();

  static Future<bool> initialize() async {
    try {
      provinsi = [];
      kabupatenKota = [];
      kecamatan = [];
      await loadDataProvinsi("assets/locations/provinsi.json");
      if (provinsi.isNotEmpty) {
        for (Lokasi lokasi in provinsi) {
          await loadDataKabupatenKota(
              "assets/locations/kabupaten/${lokasi.kode}.json", lokasi.kode);
        }
      }
      if (kabupatenKota.isNotEmpty) {
        for (Map<String, List<Lokasi>> lokasiMap in kabupatenKota) {
          for (List<Lokasi> lokasiList in lokasiMap.values) {
            for (Lokasi lokasi in lokasiList) {
              await loadDataKecamatan(
                  "assets/locations/kecamatan/${lokasi.kode}.json",
                  lokasi.kode);
            }
          }
        }
      }
      if (kecamatan.isNotEmpty) {
        return Future.value(true);
      } else {
        return Future.value(false);
      }
    } catch (e) {
      printDebug("Failed Initialize Lokasi Controller: $e");
      return Future.value(false);
    }
  }

  static Future<void> loadDataProvinsi(String assetUrl) async {
    try {
      final response = await rootBundle.loadString(assetUrl);
      final List<dynamic> dataList = jsonDecode(response);
      for (Map<String, dynamic> data in dataList) {
        provinsi.add(Lokasi.fromMap(data));
        printDebug("ID: ${data["id"]}, PROVINSI: ${data["nama"]}, Added");
      }
    } catch (e) {
      printDebug("Failed to Load Data Provinsi: $e");
    }
  }

  static Future<void> loadDataKabupatenKota(
      String assetUrl, String idProvinsi) async {
    try {
      List<Lokasi> poolKabupatenKota = [];
      final response = await rootBundle.loadString(assetUrl);
      final List<dynamic> dataList = jsonDecode(response);
      for (Map<String, dynamic> data in dataList) {
        poolKabupatenKota.add(Lokasi.fromMap(data));
        printDebug("ID: ${data["id"]}, KABUPATENKOTA: ${data["nama"]}, Added");
      }
      kabupatenKota.add({idProvinsi: poolKabupatenKota});
    } catch (e) {
      printDebug("Failed to Load Data Kabupaten Kota: $e");
    }
  }

  static Future<void> loadDataKecamatan(
      String assetUrl, String idKabupatenKota) async {
    try {
      List<Lokasi> poolKecamatan = [];
      final response = await rootBundle.loadString(assetUrl);
      final List<dynamic> dataList = jsonDecode(response);
      for (Map<String, dynamic> data in dataList) {
        poolKecamatan.add(Lokasi.fromMap(data));
        printDebug("ID: ${data["id"]}, KECAMATAN: ${data["nama"]}, Added");
      }
      kecamatan.add({idKabupatenKota: poolKecamatan});
    } catch (e) {
      printDebug("Failed to Load Data Kecamatan: $e");
    }
  }

  static List<Lokasi> getKabupatenKotaByProvinsi(String idProvinsi) {
    int kabupatenKotaIndex =
        kabupatenKota.indexWhere((element) => element.containsKey(idProvinsi));
    Map<String, List<Lokasi>> kabupatenKotaMap =
        kabupatenKota[kabupatenKotaIndex];
    return kabupatenKotaMap[idProvinsi]!;
  }

  static List<Lokasi> getKecamatanByKabupatenKota(String idKabupatenKota) {
    int kecamatanIndex =
        kecamatan.indexWhere((element) => element.containsKey(idKabupatenKota));
    Map<String, List<Lokasi>> kecamatanMap = kecamatan[kecamatanIndex];
    return kecamatanMap[idKabupatenKota]!;
  }
}

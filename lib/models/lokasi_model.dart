class Lokasi {
  String? kodeProvinsi;
  String? kodeKabupatenKota;
  String? kodeKecamatan;
  String nama;

  Lokasi(
    this.kodeProvinsi,
    this.kodeKabupatenKota,
    this.kodeKecamatan,
    this.nama,
  );

  factory Lokasi.fromMap(Map<String, dynamic> map) => Lokasi(
        map["id"]!.isNotEmpty ? map["id"]!.substring(0, 2) : null,
        map["id"]!.length > 2 ? map["id"]!.substring(2, 4) : null,
        map["id"]!.length > 4 ? map["id"]!.substring(4, 6) : null,
        map["nama"]!,
      );

  Map<String, dynamic> toMap() => {
        "id": (kodeProvinsi ?? "") +
            (kodeKabupatenKota ?? "") +
            (kodeKecamatan ?? ""),
        "nama": nama,
      };

  String get kode =>
      (kodeProvinsi ?? "") + (kodeKabupatenKota ?? "") + (kodeKecamatan ?? "");

  bool get isProvinsi =>
      kodeProvinsi != null && kodeKabupatenKota == null && kodeKecamatan == null
          ? true
          : false;
  bool get isKabupatenKota =>
      kodeProvinsi != null && kodeKabupatenKota != null && kodeKecamatan == null
          ? true
          : false;
  bool get isKecamatan =>
      kodeProvinsi != null && kodeKabupatenKota != null && kodeKecamatan != null
          ? true
          : false;

  String? get locationType {
    if (isKecamatan) {
      return "Kecamatan";
    } else if (isKabupatenKota) {
      return "Kabupaten / Kota";
    } else if (isProvinsi) {
      return "Provinsi";
    } else {
      return null;
    }
  }
}

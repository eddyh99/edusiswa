enum DashboardPages { home, myclass, liveclass, transaction, account }

enum JenisKelamin { laki, perempuan }

enum JenisPertemuan { online, offline }

enum Paket {
  ueducation,
  utalent,
  codu,
}

enum UEducation {
  edukios,
  edukidz,
  speakizy,
  creativo,
  privatecreativo,
  shiyong,
}

extension PaketExtension on Paket {
  String get title {
    switch (this) {
      case Paket.ueducation:
        return "UEducation";
      case Paket.utalent:
        return "UTalent";
      case Paket.codu:
        return "codU";
    }
  }
}

extension UEducationExtension on UEducation {
  String get title {
    switch (this) {
      case UEducation.edukios:
        return "Edukios";
      case UEducation.edukidz:
        return "Edukidz";
      case UEducation.speakizy:
        return "Speakizy";
      case UEducation.creativo:
        return "Creativo";
      case UEducation.privatecreativo:
        return "Private by Creativo";
      case UEducation.shiyong:
        return "Shiyong";
    }
  }

  String get logoPath {
    switch (this) {
      case UEducation.edukios:
        return "assets/images/logo-edukios.png";
      case UEducation.edukidz:
        return "assets/images/logo-edukidz.png";
      case UEducation.speakizy:
        return "assets/images/logo-speakizy.png";
      case UEducation.creativo:
        return "assets/images/logo-creativo.png";
      case UEducation.privatecreativo:
        return "assets/images/logo-private-creativo.png";
      case UEducation.shiyong:
        return "assets/images/logo-shiyong.png";
    }
  }
}

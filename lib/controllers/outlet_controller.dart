import '../models/outlet_model.dart';

class OutletController {
  static late List<Outlet> outlets;
  static OutletController? _instance;
  factory OutletController() => _instance ??= OutletController._();
  OutletController._();

  static void initialize() {
    //dummy data
    outlets = [];
    outlets.add(Outlet("Eduhub", "1001", "Eduhub Kebo Iwa Selatan",
        "Jl. Kebo Iwa Selatan No.81, Padangsambian Kaja"));
    outlets.add(
        Outlet("Eduhub", "1002", "Eduhub Renon", "Jalan Raya Renon No. 1"));
    outlets.add(Outlet("Eduhub", "1003", "Eduhub Mahendradata Utara",
        "Jalan Mahendratada utara no 39"));
    outlets.add(Outlet(
        "Eduhub", "1004", "Eduhub Kebo Iwa Utara", "Jl. Kebo Iwa utara No.88"));
  }
}

import 'package:mobx/mobx.dart';

part 'license_controller.g.dart';

class LicenseController = _LicenseControllerBase with _$LicenseController;

abstract class _LicenseControllerBase with Store {
  _LicenseControllerBase() {
    autorun((_) {
      print(licenseValue);
      print(parkingLotsNumber);
      print("vagas ocupadas: $parkingLotsList");
      print("historico: $historyParkingLotsList");
    });
  }

// -----@observable-----

  @observable
  String licenseValue = "";

  @observable
  int parkingLotsNumber = 0;

  @observable
  ObservableList parkingLotsList = [].asObservable();

  @observable
  ObservableList historyParkingLotsList = [].asObservable();

// -----@actions-----

  @action
  void setLicenseValue(String value) => licenseValue = value;

  @action
  useParkingLot() {
    parkingLotsList.add(licenseValue);
    parkingLotsNumber++;
  }

  @action
  removeParkingLot(value) {
    parkingLotsList.remove(value);
    parkingLotsNumber--;
  }

  @action
  addToHistoryParkingLot() {
    historyParkingLotsList.add(licenseValue);
    licenseValue = "";
  }

// -----@computed-----
}

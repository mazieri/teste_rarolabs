import 'package:mobx/mobx.dart';

part 'license_controller.g.dart';

class LicenseController = _LicenseControllerBase with _$LicenseController;

abstract class _LicenseControllerBase with Store {
  @observable
  String licenseValue = "";

  @observable
  int parkingLotsNumber = 0;

  @observable
  ObservableList parkingLotsList = [].asObservable();

  @observable
  ObservableList historyParkingLotsListInAndOut = [].asObservable();

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
    historyParkingLotsListInAndOut.add(value.toUpperCase() + " saiu");
    parkingLotsNumber--;
  }

  @action
  addToHistoryParkingLot() {
    historyParkingLotsListInAndOut.add(licenseValue.toUpperCase() + " entrou");
    licenseValue = "";
  }

  @action
  cleanHistoryParkingLotsListInAndOut() {
    historyParkingLotsListInAndOut.clear();
  }

  @computed
  bool get isValidLicense => licenseValue.length == 7;
}

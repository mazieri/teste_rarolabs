// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LicenseController on _LicenseControllerBase, Store {
  Computed<bool>? _$isValidLicenseComputed;

  @override
  bool get isValidLicense =>
      (_$isValidLicenseComputed ??= Computed<bool>(() => super.isValidLicense,
              name: '_LicenseControllerBase.isValidLicense'))
          .value;

  final _$licenseValueAtom = Atom(name: '_LicenseControllerBase.licenseValue');

  @override
  String get licenseValue {
    _$licenseValueAtom.reportRead();
    return super.licenseValue;
  }

  @override
  set licenseValue(String value) {
    _$licenseValueAtom.reportWrite(value, super.licenseValue, () {
      super.licenseValue = value;
    });
  }

  final _$parkingLotsNumberAtom =
      Atom(name: '_LicenseControllerBase.parkingLotsNumber');

  @override
  int get parkingLotsNumber {
    _$parkingLotsNumberAtom.reportRead();
    return super.parkingLotsNumber;
  }

  @override
  set parkingLotsNumber(int value) {
    _$parkingLotsNumberAtom.reportWrite(value, super.parkingLotsNumber, () {
      super.parkingLotsNumber = value;
    });
  }

  final _$parkingLotsListAtom =
      Atom(name: '_LicenseControllerBase.parkingLotsList');

  @override
  ObservableList<dynamic> get parkingLotsList {
    _$parkingLotsListAtom.reportRead();
    return super.parkingLotsList;
  }

  @override
  set parkingLotsList(ObservableList<dynamic> value) {
    _$parkingLotsListAtom.reportWrite(value, super.parkingLotsList, () {
      super.parkingLotsList = value;
    });
  }

  final _$historyParkingLotsListInAndOutAtom =
      Atom(name: '_LicenseControllerBase.historyParkingLotsListInAndOut');

  @override
  ObservableList<dynamic> get historyParkingLotsListInAndOut {
    _$historyParkingLotsListInAndOutAtom.reportRead();
    return super.historyParkingLotsListInAndOut;
  }

  @override
  set historyParkingLotsListInAndOut(ObservableList<dynamic> value) {
    _$historyParkingLotsListInAndOutAtom
        .reportWrite(value, super.historyParkingLotsListInAndOut, () {
      super.historyParkingLotsListInAndOut = value;
    });
  }

  final _$_LicenseControllerBaseActionController =
      ActionController(name: '_LicenseControllerBase');

  @override
  void setLicenseValue(String value) {
    final _$actionInfo = _$_LicenseControllerBaseActionController.startAction(
        name: '_LicenseControllerBase.setLicenseValue');
    try {
      return super.setLicenseValue(value);
    } finally {
      _$_LicenseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic useParkingLot() {
    final _$actionInfo = _$_LicenseControllerBaseActionController.startAction(
        name: '_LicenseControllerBase.useParkingLot');
    try {
      return super.useParkingLot();
    } finally {
      _$_LicenseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeParkingLot(dynamic value) {
    final _$actionInfo = _$_LicenseControllerBaseActionController.startAction(
        name: '_LicenseControllerBase.removeParkingLot');
    try {
      return super.removeParkingLot(value);
    } finally {
      _$_LicenseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addToHistoryParkingLot() {
    final _$actionInfo = _$_LicenseControllerBaseActionController.startAction(
        name: '_LicenseControllerBase.addToHistoryParkingLot');
    try {
      return super.addToHistoryParkingLot();
    } finally {
      _$_LicenseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic cleanHistoryParkingLotsListInAndOut() {
    final _$actionInfo = _$_LicenseControllerBaseActionController.startAction(
        name: '_LicenseControllerBase.cleanHistoryParkingLotsListInAndOut');
    try {
      return super.cleanHistoryParkingLotsListInAndOut();
    } finally {
      _$_LicenseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
licenseValue: ${licenseValue},
parkingLotsNumber: ${parkingLotsNumber},
parkingLotsList: ${parkingLotsList},
historyParkingLotsListInAndOut: ${historyParkingLotsListInAndOut},
isValidLicense: ${isValidLicense}
    ''';
  }
}

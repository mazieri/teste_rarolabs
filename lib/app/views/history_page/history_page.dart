import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/controllers_exports.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final historyController = GetIt.I.get<LicenseController>();

    return SafeArea(
      child: Observer(
        builder: (_) {
          return ListView.separated(
            itemCount: historyController.historyParkingLotsList.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => ListTile(
              title: Text(
                  "O Veículo de placa ${historyController.historyParkingLotsList[index].toUpperCase()}, entrou"),
            ),
          );
        },
      ),
    );
  }
}

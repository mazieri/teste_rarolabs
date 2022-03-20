import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/controllers_exports.dart';
import '../../services/history_service.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parkingController = GetIt.I.get<LicenseController>();
    final historyController = GetIt.I.get<HistoryService>();

    var themeMode = Theme.of(context).brightness;

    TextEditingController textController = TextEditingController();

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(10),
                child: Observer(builder: (_) {
                  return GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    semanticChildCount: 20,
                    children: List.generate(
                        parkingController.parkingLotsList.length, (index) {
                      return SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              parkingController.parkingLotsList[index]
                                  .toString(),
                              textAlign: TextAlign.center,
                              key: const ValueKey("stringPlaca"),
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/car_top_shape.png",
                                fit: BoxFit.contain,
                                color: themeMode == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                parkingController.removeParkingLot(
                                  parkingController.parkingLotsList[index],
                                );
                                historyController.saveHistory();
                              },
                              child: const Center(
                                child: Text("Saída"),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                })),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Observer(builder: (_) {
                    return Text(
                      "Vagas Utilizadas: " +
                          parkingController.parkingLotsNumber.toString(),
                      key: const ValueKey("contadorVagas"),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }),
                  TextField(
                    autocorrect: false,
                    controller: textController,
                    onChanged: parkingController.setLicenseValue,
                    decoration: const InputDecoration(
                      labelText: "Placa do Veículo",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return ElevatedButton(
                        onPressed: parkingController.isValidLicense == true
                            ? () {
                                parkingController.useParkingLot();
                                parkingController.addToHistoryParkingLot();
                                historyController.saveHistory();
                                textController.clear();
                              }
                            : null,
                        child: const Center(
                          child: Text("Marcar Entrada do Veículo"),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

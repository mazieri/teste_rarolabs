import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/controllers_exports.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parkingController = GetIt.I.get<LicenseController>();
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
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/car_top_shape.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () =>
                                  parkingController.removeParkingLot(
                                parkingController.parkingLotsList[index],
                              ),
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
                    return Text("Vagas Utilizadas: " +
                        parkingController.parkingLotsNumber.toString());
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

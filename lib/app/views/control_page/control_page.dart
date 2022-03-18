import 'package:flutter/material.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                semanticChildCount: 20,
                children: List.generate(20, (index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Placa do Carro $index"),
                        Container(
                          width: 70,
                          height: 70,
                          color: Colors.orange,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Center(
                            child: Text("Saída"),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Placa do Veículo",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text("Marcar Entrada do Veículo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemBuilder: (context, index) => ListTile(
          title: Text('Carro $index'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:teste_rarolabs/app/exports.dart';
import '../../controllers/controllers_exports.dart';
import '../../services/history_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController pageController;
  final historyService = GetIt.I.get<HistoryService>();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: paginaAtual);
    rememberHistory();
  }

  Future rememberHistory() async {
    await historyService.loadHistory();
  }

  setPage(index) {
    setState(() {
      paginaAtual = index;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final parkingController = GetIt.I.get<LicenseController>();

    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: paginaAtual == 1
          ? FloatingActionButton.extended(
              onPressed: () {
                parkingController.cleanHistoryParkingLotsListInAndOut();
                historyService.cleanHistory();
              },
              enableFeedback: true,
              label: const Text("Fazer Fechamento"),
            )
          : null,
      body: PageView(
        controller: pageController,
        onPageChanged: setPage,
        children: const [
          ControlPage(),
          HistoryPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.line_style),
            label: "Controle das Vagas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "Histórico",
          ),
        ],
      ),
    );
  }
}

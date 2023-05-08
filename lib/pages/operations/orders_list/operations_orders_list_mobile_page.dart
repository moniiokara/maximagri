import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';

class OperationsOrdersListMobilePage extends StatefulWidget {
  const OperationsOrdersListMobilePage({Key? key}) : super(key: key);

  @override
  State<OperationsOrdersListMobilePage> createState() =>
      _OperationsOrdersListMobilePageState();
}

class _OperationsOrdersListMobilePageState
    extends State<OperationsOrdersListMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsOrdersListMobilePage'),
      ),
      drawer: const OperationsDrawer(),
      bottomNavigationBar: const OperationsNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('OperationsOrdersListMobilePage'),
      ),
    );
  }
}

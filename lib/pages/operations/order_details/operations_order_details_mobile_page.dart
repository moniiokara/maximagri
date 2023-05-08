import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';

class OperationsOrderDetailsMobilePage extends StatefulWidget {
  const OperationsOrderDetailsMobilePage({Key? key}) : super(key: key);

  @override
  State<OperationsOrderDetailsMobilePage> createState() =>
      _OperationsOrderDetailsMobilePageState();
}

class _OperationsOrderDetailsMobilePageState
    extends State<OperationsOrderDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsOrderDetailsMobilePage'),
      ),
      drawer: const OperationsDrawer(),
      bottomNavigationBar: const OperationsNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('OperationsOrderDetailsMobilePage'),
      ),
    );
  }
}

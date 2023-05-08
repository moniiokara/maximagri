import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';

class OperationsOrderDetailsTabletPage extends StatefulWidget {
  const OperationsOrderDetailsTabletPage({Key? key}) : super(key: key);

  @override
  State<OperationsOrderDetailsTabletPage> createState() =>
      _OperationsOrderDetailsTabletPageState();
}

class _OperationsOrderDetailsTabletPageState
    extends State<OperationsOrderDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsOrderDetailsTabletPage'),
      ),
      drawer: const OperationsDrawer(),
      bottomNavigationBar: const OperationsNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('OperationsOrderDetailsTabletPage'),
      ),
    );
  }
}

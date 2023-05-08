import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';

class OperationsOrdersListTabletPage extends StatefulWidget {
  const OperationsOrdersListTabletPage({Key? key}) : super(key: key);

  @override
  State<OperationsOrdersListTabletPage> createState() =>
      _OperationsOrdersListTabletPageState();
}

class _OperationsOrdersListTabletPageState
    extends State<OperationsOrdersListTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsOrdersListTabletPage'),
      ),
      drawer: const OperationsDrawer(),
      bottomNavigationBar: const OperationsNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('OperationsOrdersListTabletPage'),
      ),
    );
  }
}

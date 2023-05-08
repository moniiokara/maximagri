import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';

class OperationsCreditCenterMobilePage extends StatefulWidget {
  const OperationsCreditCenterMobilePage({Key? key}) : super(key: key);

  @override
  State<OperationsCreditCenterMobilePage> createState() =>
      _OperationsCreditCenterMobilePageState();
}

class _OperationsCreditCenterMobilePageState
    extends State<OperationsCreditCenterMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsCreditCenterMobilePage'),
      ),
      drawer: const OperationsDrawer(),
      bottomNavigationBar: const OperationsNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('OperationsCreditCenterMobilePage'),
      ),
    );
  }
}

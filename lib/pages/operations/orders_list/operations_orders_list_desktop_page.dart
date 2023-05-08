import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';

class OperationsOrdersListDesktopPage extends StatefulWidget {
  const OperationsOrdersListDesktopPage({Key? key}) : super(key: key);

  @override
  State<OperationsOrdersListDesktopPage> createState() =>
      _OperationsOrdersListDesktopPageState();
}

class _OperationsOrdersListDesktopPageState
    extends State<OperationsOrdersListDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsOrdersListDesktopPage'),
      ),
      body: Row(
        children: const [
          OperationsDrawer(),
          Text('OperationsOrdersListDesktopPage'),
        ],
      ),
    );
  }
}

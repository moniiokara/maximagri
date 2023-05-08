import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';

class OperationsOrderDetailsDesktopPage extends StatefulWidget {
  const OperationsOrderDetailsDesktopPage({Key? key}) : super(key: key);

  @override
  State<OperationsOrderDetailsDesktopPage> createState() =>
      _OperationsOrderDetailsDesktopPageState();
}

class _OperationsOrderDetailsDesktopPageState
    extends State<OperationsOrderDetailsDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsOrderDetailsDesktopPage'),
      ),
      body: Row(
        children: const [
          OperationsDrawer(),
          Text('OperationsOrderDetailsDesktopPage'),
        ],
      ),
    );
  }
}

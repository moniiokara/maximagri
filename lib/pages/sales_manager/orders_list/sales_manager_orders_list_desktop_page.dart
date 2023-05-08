import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';

class SalesManagerOrdersListDesktopPage extends StatefulWidget {
  const SalesManagerOrdersListDesktopPage({Key? key}) : super(key: key);

  @override
  State<SalesManagerOrdersListDesktopPage> createState() =>
      _SalesManagerOrdersListDesktopPageState();
}

class _SalesManagerOrdersListDesktopPageState
    extends State<SalesManagerOrdersListDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerOrdersListDesktopPage'),
      ),
      body: Row(
        children: const [
          SalesManagerDrawer(),
          Text('SalesManagerOrdersListDesktopPage'),
        ],
      ),
    );
  }
}

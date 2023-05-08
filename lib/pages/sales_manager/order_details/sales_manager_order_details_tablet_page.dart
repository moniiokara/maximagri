import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_manager_navigation.dart';

class SalesManagerOrderDetailsTabletPage extends StatefulWidget {
  const SalesManagerOrderDetailsTabletPage({Key? key}) : super(key: key);

  @override
  State<SalesManagerOrderDetailsTabletPage> createState() =>
      _SalesManagerOrderDetailsTabletPageState();
}

class _SalesManagerOrderDetailsTabletPageState
    extends State<SalesManagerOrderDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerOrderDetailsTabletPage'),
      ),
      drawer: const SalesManagerDrawer(),
      bottomNavigationBar: const SalesManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesManagerOrderDetailsTabletPage'),
      ),
    );
  }
}

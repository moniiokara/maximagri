import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_manager_navigation.dart';

class SalesManagerOrdersListTabletPage extends StatefulWidget {
  const SalesManagerOrdersListTabletPage({Key? key}) : super(key: key);

  @override
  State<SalesManagerOrdersListTabletPage> createState() =>
      _SalesManagerOrdersListTabletPageState();
}

class _SalesManagerOrdersListTabletPageState
    extends State<SalesManagerOrdersListTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerOrdersListTabletPage'),
      ),
      drawer: const SalesManagerDrawer(),
      bottomNavigationBar: const SalesManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesManagerOrdersListTabletPage'),
      ),
    );
  }
}

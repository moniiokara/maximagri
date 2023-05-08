import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_manager_navigation.dart';

class SalesManagerOrdersListMobilePage extends StatefulWidget {
  const SalesManagerOrdersListMobilePage({Key? key}) : super(key: key);

  @override
  State<SalesManagerOrdersListMobilePage> createState() =>
      _SalesManagerOrdersListMobilePageState();
}

class _SalesManagerOrdersListMobilePageState
    extends State<SalesManagerOrdersListMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerOrdersListMobilePage'),
      ),
      drawer: const SalesManagerDrawer(),
      bottomNavigationBar: const SalesManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesManagerOrdersListMobilePage'),
      ),
    );
  }
}

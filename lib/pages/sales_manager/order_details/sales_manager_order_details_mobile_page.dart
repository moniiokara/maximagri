import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_manager_navigation.dart';

class SalesManagerOrderDetailsMobilePage extends StatefulWidget {
  const SalesManagerOrderDetailsMobilePage({Key? key}) : super(key: key);

  @override
  State<SalesManagerOrderDetailsMobilePage> createState() =>
      _SalesManagerOrderDetailsMobilePageState();
}

class _SalesManagerOrderDetailsMobilePageState
    extends State<SalesManagerOrderDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerOrderDetailsMobilePage'),
      ),
      drawer: const SalesManagerDrawer(),
      bottomNavigationBar: const SalesManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesManagerOrderDetailsMobilePage'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_officer_navigation.dart';

class SalesOfficerOrderDetailsTabletPage extends StatefulWidget {
  const SalesOfficerOrderDetailsTabletPage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerOrderDetailsTabletPage> createState() =>
      _SalesOfficerOrderDetailsTabletPageState();
}

class _SalesOfficerOrderDetailsTabletPageState
    extends State<SalesOfficerOrderDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerOrderDetailsTabletPage'),
      ),
      drawer: const SalesOfficerDrawer(),
      bottomNavigationBar: const SalesOfficerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesOfficerOrderDetailsTabletPage'),
      ),
    );
  }
}

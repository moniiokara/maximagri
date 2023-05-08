import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_officer_navigation.dart';

class SalesOfficerOrdersListMobilePage extends StatefulWidget {
  const SalesOfficerOrdersListMobilePage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerOrdersListMobilePage> createState() =>
      _SalesOfficerOrdersListMobilePageState();
}

class _SalesOfficerOrdersListMobilePageState
    extends State<SalesOfficerOrdersListMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerOrdersListMobilePage'),
      ),
      drawer: const SalesOfficerDrawer(),
      bottomNavigationBar: const SalesOfficerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesOfficerOrdersListMobilePage'),
      ),
    );
  }
}

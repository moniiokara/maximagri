import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_officer_navigation.dart';

class SalesOfficerOrderDetailsMobilePage extends StatefulWidget {
  const SalesOfficerOrderDetailsMobilePage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerOrderDetailsMobilePage> createState() =>
      _SalesOfficerOrderDetailsMobilePageState();
}

class _SalesOfficerOrderDetailsMobilePageState
    extends State<SalesOfficerOrderDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerOrderDetailsMobilePage'),
      ),
      drawer: const SalesOfficerDrawer(),
      bottomNavigationBar: const SalesOfficerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesOfficerOrderDetailsMobilePage'),
      ),
    );
  }
}

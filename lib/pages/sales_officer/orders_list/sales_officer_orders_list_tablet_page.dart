import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_officer_navigation.dart';

class SalesOfficerOrdersListTabletPage extends StatefulWidget {
  const SalesOfficerOrdersListTabletPage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerOrdersListTabletPage> createState() =>
      _SalesOfficerOrdersListTabletPageState();
}

class _SalesOfficerOrdersListTabletPageState
    extends State<SalesOfficerOrdersListTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerOrdersListTabletPage'),
      ),
      drawer: const SalesOfficerDrawer(),
      bottomNavigationBar: const SalesOfficerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('SalesOfficerOrdersListTabletPage'),
      ),
    );
  }
}

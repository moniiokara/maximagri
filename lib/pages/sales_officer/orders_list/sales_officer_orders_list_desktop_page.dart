import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';

class SalesOfficerOrdersListDesktopPage extends StatefulWidget {
  const SalesOfficerOrdersListDesktopPage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerOrdersListDesktopPage> createState() =>
      _SalesOfficerOrdersListDesktopPageState();
}

class _SalesOfficerOrdersListDesktopPageState
    extends State<SalesOfficerOrdersListDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerOrdersListDesktopPage'),
      ),
      body: Row(
        children: const [
          SalesOfficerDrawer(),
          Text('SalesOfficerOrdersListDesktopPage'),
        ],
      ),
    );
  }
}

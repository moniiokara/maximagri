import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';

class SalesOfficerOrderDetailsDesktopPage extends StatefulWidget {
  const SalesOfficerOrderDetailsDesktopPage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerOrderDetailsDesktopPage> createState() =>
      _SalesOfficerOrderDetailsDesktopPageState();
}

class _SalesOfficerOrderDetailsDesktopPageState
    extends State<SalesOfficerOrderDetailsDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerOrderDetailsDesktopPage'),
      ),
      body: Row(
        children: const [
          SalesOfficerDrawer(),
          Text('SalesOfficerOrderDetailsDesktopPage'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';

class SalesManagerOrderDetailsDesktopPage extends StatefulWidget {
  const SalesManagerOrderDetailsDesktopPage({Key? key}) : super(key: key);

  @override
  State<SalesManagerOrderDetailsDesktopPage> createState() =>
      _SalesManagerOrderDetailsDesktopPageState();
}

class _SalesManagerOrderDetailsDesktopPageState
    extends State<SalesManagerOrderDetailsDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerOrderDetailsDesktopPage'),
      ),
      body: Row(
        children: const [
          SalesManagerDrawer(),
          Text('SalesManagerOrderDetailsDesktopPage'),
        ],
      ),
    );
  }
}

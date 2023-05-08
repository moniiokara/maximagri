import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';

class ZonalManagerOrdersListDesktopPage extends StatefulWidget {
  const ZonalManagerOrdersListDesktopPage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerOrdersListDesktopPage> createState() =>
      _ZonalManagerOrdersListDesktopPageState();
}

class _ZonalManagerOrdersListDesktopPageState
    extends State<ZonalManagerOrdersListDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerOrdersListDesktopPage'),
      ),
      body: Row(
        children: const [
          ZonalManagerDrawer(),
          Text('ZonalManagerOrdersListDesktopPage'),
        ],
      ),
    );
  }
}

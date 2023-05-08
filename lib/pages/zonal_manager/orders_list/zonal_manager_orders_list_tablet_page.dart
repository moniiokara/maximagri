import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/zonal_manager_navigation.dart';

class ZonalManagerOrdersListTabletPage extends StatefulWidget {
  const ZonalManagerOrdersListTabletPage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerOrdersListTabletPage> createState() =>
      _ZonalManagerOrdersListTabletPageState();
}

class _ZonalManagerOrdersListTabletPageState
    extends State<ZonalManagerOrdersListTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerOrdersListTabletPage'),
      ),
      drawer: const ZonalManagerDrawer(),
      bottomNavigationBar: const ZonalManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('ZonalManagerOrdersListTabletPage'),
      ),
    );
  }
}

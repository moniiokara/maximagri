import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/zonal_manager_navigation.dart';

class ZonalManagerOrdersListMobilePage extends StatefulWidget {
  const ZonalManagerOrdersListMobilePage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerOrdersListMobilePage> createState() =>
      _ZonalManagerOrdersListMobilePageState();
}

class _ZonalManagerOrdersListMobilePageState
    extends State<ZonalManagerOrdersListMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerOrdersListMobilePage'),
      ),
      drawer: const ZonalManagerDrawer(),
      bottomNavigationBar: const ZonalManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('ZonalManagerOrdersListMobilePage'),
      ),
    );
  }
}

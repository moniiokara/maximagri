import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/zonal_manager_navigation.dart';

class ZonalManagerOrderDetailsMobilePage extends StatefulWidget {
  const ZonalManagerOrderDetailsMobilePage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerOrderDetailsMobilePage> createState() =>
      _ZonalManagerOrderDetailsMobilePageState();
}

class _ZonalManagerOrderDetailsMobilePageState
    extends State<ZonalManagerOrderDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerOrderDetailsMobilePage'),
      ),
      drawer: const ZonalManagerDrawer(),
      bottomNavigationBar: const ZonalManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('ZonalManagerOrderDetailsMobilePage'),
      ),
    );
  }
}

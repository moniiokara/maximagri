import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/zonal_manager_navigation.dart';

class ZonalManagerOrderDetailsTabletPage extends StatefulWidget {
  const ZonalManagerOrderDetailsTabletPage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerOrderDetailsTabletPage> createState() =>
      _ZonalManagerOrderDetailsTabletPageState();
}

class _ZonalManagerOrderDetailsTabletPageState
    extends State<ZonalManagerOrderDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerOrderDetailsTabletPage'),
      ),
      drawer: const ZonalManagerDrawer(),
      bottomNavigationBar: const ZonalManagerNavigation(selectedIndex: 2),
      body: const Center(
        child: Text('ZonalManagerOrderDetailsTabletPage'),
      ),
    );
  }
}

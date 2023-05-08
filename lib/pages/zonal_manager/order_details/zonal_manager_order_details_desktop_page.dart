import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';

class ZonalManagerOrderDetailsDesktopPage extends StatefulWidget {
  const ZonalManagerOrderDetailsDesktopPage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerOrderDetailsDesktopPage> createState() =>
      _ZonalManagerOrderDetailsDesktopPageState();
}

class _ZonalManagerOrderDetailsDesktopPageState
    extends State<ZonalManagerOrderDetailsDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerOrderDetailsDesktopPage'),
      ),
      body: Row(
        children: const [
          ZonalManagerDrawer(),
          Text('ZonalManagerOrderDetailsDesktopPage'),
        ],
      ),
    );
  }
}

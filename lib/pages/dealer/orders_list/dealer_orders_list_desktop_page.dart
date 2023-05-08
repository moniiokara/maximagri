import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/dealer_drawer.dart';

// import 'package:maximagri/pages/dealer/order_details/dealer_order_details_desktop_page.dart';
// import 'package:maximagri/pages/dealer/order_details/dealer_order_details_mobile_page.dart';
// import 'package:maximagri/pages/dealer/order_details/dealer_order_details_tablet_page.dart';

class DealerOrdersListDesktopPage extends StatefulWidget {
  const DealerOrdersListDesktopPage({Key? key}) : super(key: key);

  @override
  State<DealerOrdersListDesktopPage> createState() =>
      _DealerOrdersListDesktopPageState();
}

class _DealerOrdersListDesktopPageState
    extends State<DealerOrdersListDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealerOrdersListDesktopPage'),
      ),
      body: Row(
        children: [DealerDrawer(), const Text('DealerOrdersListDesktopPage')],
      ),
    );
  }
}

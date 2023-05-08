import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/dealer_drawer.dart';
import 'package:maximagri/widgets/navigation/dealer_navigation.dart';

// import 'package:maximagri/pages/dealer/order_details/dealer_order_details_desktop_page.dart';
// import 'package:maximagri/pages/dealer/order_details/dealer_order_details_mobile_page.dart';
// import 'package:maximagri/pages/dealer/order_details/dealer_order_details_tablet_page.dart';

class DealerOrdersListTabletPage extends StatefulWidget {
  const DealerOrdersListTabletPage({Key? key}) : super(key: key);

  @override
  State<DealerOrdersListTabletPage> createState() =>
      _DealerOrdersListTabletPageState();
}

class _DealerOrdersListTabletPageState
    extends State<DealerOrdersListTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealerOrdersListTabletPage'),
      ),
      drawer: DealerDrawer(),
      bottomNavigationBar: const DealerNavigation(selectedIndex: 2),
    );
  }
}

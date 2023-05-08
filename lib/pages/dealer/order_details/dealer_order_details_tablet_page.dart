import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/dealer_drawer.dart';
import 'package:maximagri/widgets/order_display_card.dart';

class DealerOrderDetailsTabletPage extends StatefulWidget {
  const DealerOrderDetailsTabletPage({Key? key}) : super(key: key);

  @override
  State<DealerOrderDetailsTabletPage> createState() =>
      _DealerOrderDetailsTabletPageState();
}

class _DealerOrderDetailsTabletPageState
    extends State<DealerOrderDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealerOrderDetailsTabletPage'),
      ),
      drawer: DealerDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserDisplayCard(
              name: 'Noman Ashraf',
              orderNo: '12345',
              dateTime: '2012: 2:30',
              totalPrice: '200',
              totalQuantity: '20',
              status: ' Pending',
            ),

            UserDisplayCard(
              name: 'Kamran Ashraf',
              orderNo: '12345',
              dateTime: '2012: 2:30',
              totalPrice: '200',
              totalQuantity: '20',
              status: ' Pending',
            ),

            UserDisplayCard(
              name: 'Adnan Ashraf',
              orderNo: '12345',
              dateTime: '2012: 2:30',
              totalPrice: '200',
              totalQuantity: '20',
              status: ' Pending',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/dealer_drawer.dart';
import 'package:maximagri/widgets/order_display_card.dart';

class DealerOrderDetailsMobilePage extends StatefulWidget {
  const DealerOrderDetailsMobilePage({Key? key}) : super(key: key);

  @override
  State<DealerOrderDetailsMobilePage> createState() =>
      _DealerOrderDetailsMobilePageState();
}

class _DealerOrderDetailsMobilePageState
    extends State<DealerOrderDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DealerDrawer(),
      appBar: AppBar(
        title: const Text('DealerOrderDetailsMobilePage'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: UserDisplayCard(
                name: 'Noman Ashraf',
                orderNo: '12345',
                dateTime: '2012: 2:30',
                totalPrice: '200',
                totalQuantity: '20',
                status: ' Pending',
              ),
            ),
            Expanded(
              child: UserDisplayCard(
                name: 'Kamran Ashraf',
                orderNo: '12345',
                dateTime: '2012: 2:30',
                totalPrice: '200',
                totalQuantity: '20',
                status: ' Pending',
              ),
            ),
            Expanded(
              child: UserDisplayCard(
                name: 'Adnan Ashraf',
                orderNo: '12345',
                dateTime: '2012: 2:30',
                totalPrice: '200',
                totalQuantity: '20',
                status: ' Pending',
              ),
            ),

          ],
        ),
      ),
    );
  }
}

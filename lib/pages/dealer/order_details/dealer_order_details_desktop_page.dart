import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/dealer_drawer.dart';
import 'package:maximagri/widgets/order_display_card.dart';

class DealerOrderDetailsDesktopPage extends StatefulWidget {
  const DealerOrderDetailsDesktopPage({Key? key}) : super(key: key);

  @override
  State<DealerOrderDetailsDesktopPage> createState() =>
      _DealerOrderDetailsDesktopPageState();
}

class _DealerOrderDetailsDesktopPageState
    extends State<DealerOrderDetailsDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealerOrderDetailsDesktopPage'),
      ),
      body: Row(children: [
        DealerDrawer(),
        SingleChildScrollView(
          child: Column(

            children: [
              Row(
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
                 ],
              ),
              Row(
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
                ],
              ),
              Row(
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
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

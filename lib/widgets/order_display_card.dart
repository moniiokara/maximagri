import 'package:flutter/material.dart';

class UserDisplayCard extends StatelessWidget {

  final String name;
  final String orderNo;
  final String dateTime;
  final String totalPrice;
  final String totalQuantity;
  final String status;

   UserDisplayCard({Key? key,
   required this.name,
   required this.orderNo,
   required this.dateTime,
   required this.totalPrice,
   required this.totalQuantity,
   required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    //const Icon(Icons.check_circle, size: 20, color: Colors.green),
                    const SizedBox(width: 8),
                    Container(
                      height: 30,
                      width: 110,

                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          status,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.receipt_long, size: 20, color: Colors.green,),
                const SizedBox(width: 8),
                Text('Order No: $orderNo'),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.access_time, size: 20, color: Colors.green,),
                const SizedBox(width: 8),
                Text('Date & Time: $dateTime'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.shopping_cart, size: 20, color: Colors.green,),
                const SizedBox(width: 8),
                const Text('Total Quantity: '),
                const SizedBox(width: 5,),

                Text(
                  totalQuantity,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.attach_money, size: 20, color: Colors.green,),
                const SizedBox(width: 8),
                const Text('Total Price: '),
                const SizedBox(width: 8,),
                Text(
                  totalPrice,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

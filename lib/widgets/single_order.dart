// class FormCol {
//   TextEditingController shopController;
//   TextEditingController stopController;
//   TextEditingController stopTotal;
//   String? dropdownValue;
//   ProductProfile? selectedProduct;
//   double productQuantity = 0;
//   double productPlus = 0;
//   int stopIndex;
//   TextEditingController moqController;
//   ValueChanged<int>? onMoqChanged;
//   int moqUsed = 0;
//
//   FormCol({
//     required this.shopController,
//     required this.stopController,
//     required this.stopTotal,
//     required this.moqController,
//     this.dropdownValue,
//     this.selectedProduct,
//     required this.stopIndex,
//     this.onMoqChanged,
//   });
//   void updateProduct(ProductProfile product, double quantity) {
//     selectedProduct = product;
//     productQuantity = quantity;
//   }
// }
//
// class OrderServices {
//   static TextEditingController bankNameController = TextEditingController();
//   static TextEditingController bankAmountController = TextEditingController();
//
//   static double totalOrderPrice = 0;
//   static int totalMoqUsed = 0;
//
//   static List<OrderStops> orderStop = [];
//
//   static List<FormCol> formRows = [
//     FormCol(
//       shopController: TextEditingController(),
//       stopController: TextEditingController(),
//       stopTotal: TextEditingController(),
//       dropdownValue: 'Product A',
//       stopIndex: 1,
//       moqController: TextEditingController(),
//     ),
//   ];
//
//   static void addFormRow(BuildContext context, State state) {
//     if (totalMoqUsed < 50 && formRows.length < 4) {
//       int stopIndex = formRows.isEmpty ? 1 : formRows.last.stopIndex + 1;
//
//       state.setState(() {
//         formRows.add(
//           FormCol(
//             shopController: TextEditingController(),
//             stopController: TextEditingController(),
//             stopTotal: TextEditingController(),
//             dropdownValue: 'Product A',
//             stopIndex: stopIndex,
//             moqController: TextEditingController(),
//             onMoqChanged: (newValue) {
//               state.setState(() {
//                 totalMoqUsed += newValue;
//               });
//             },
//           ),
//         );
//       });
//     } else if (totalMoqUsed >= 50) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Maximum MOQ of 50 reached. Cannot add more products.'),
//       ));
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Maximum limit of 4 stops reached.'),
//       ));
//     }
//   }
//
//   static List<ProductProfile> products = [
//     ProductProfile(
//         productName: "Product 1",
//         productSKU: "SKU 1",
//         productDescription: "Description 1",
//         productCategory: "Category 1",
//         productGroup: "Group 1",
//         productWeight: 20,
//         productPrice: 300,
//         productMOQ: 10,
//         isSelectable: true),
//     ProductProfile(
//         productName: "Product 2",
//         productSKU: "SKU 1",
//         productDescription: "Description 1",
//         productCategory: "Category 1",
//         productGroup: "Group 1",
//         productWeight: 20,
//         productPrice: 400,
//         productMOQ: 10,
//         isSelectable: true),
//   ];
//
//   static placeOrder(BuildContext context) async {
//     for (var i = 0; i < formRows.length; i++) {
//       if (formRows[i].selectedProduct != null) {
//         orderStop.add(OrderStops(
//           stopName: formRows[i].shopController.text,
//           stopContact: formRows[i].stopController.text,
//           stopTotal: double.tryParse(formRows[i].stopTotal.text) ?? 0.0,
//           stopQuantity: int.tryParse(formRows[i].moqController.text) ?? 0,
//           //  stopTotal: double.tryParse(formRows[i].stopController.text) ?? 0.0,
//           //  stopQuantity: int.tryParse(_stopQuantityController.text) ?? 0,
//           itemList: [
//             OrderProductItem(
//               productName: formRows[i].selectedProduct!.productName,
//               productPrice: formRows[i].selectedProduct!.productPrice,
//               productQuantity: formRows[i].moqUsed,
//               productTotal: formRows[i].productQuantity,
//               // productTotal: totalOrderPrice,
//             ),
//           ],
//         ));
//       }
//     }
//
//     SingleOrder order = SingleOrder(
//       dealerUID: '',
//       dealerName: '',
//       orderSerial: '',
//       orderTotal: totalOrderPrice,
//       orderQuantity: totalMoqUsed,
//       accountUID: AccountUID(
//         operationsUID: '',
//         zonalManagerUID: '',
//         salesManagerUID: '',
//         salesOfficerUID: '',
//       ),
//       dateTime: DateTime.now(),
//       orderStatus: OrderStatus.pending,
//       orderStops: orderStop,
//       orderPayment: OrderPayment(
//         bankPaymentDetails: BankPaymentDetails(
//           bankName: bankNameController.text,
//           bankAmount: double.tryParse(bankAmountController.text) ?? 0.0,
//           bankReceipt: '',
//         ),
//         bankPayment: 20.2,
//         creditPayment: 2,
//         rentAdjustment: 10,
//       ),
//       dispatchInfo: DispatchInfo(
//         driverContact: '',
//         vehicleNo: '',
//         dispatchTime: DateTime.now(),
//       ),
//     );
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (_) => PaymentScreen(
//               order: order,
//               bankNameController: bankNameController,
//               bankAmountController: bankAmountController,
//             )));
//   }
// }

// class OrderTest extends StatefulWidget {
//   const OrderTest({Key? key}) : super(key: key);
//
//   @override
//   State<OrderTest> createState() => _OrderTestState();
// }
//
// class _OrderTestState extends State<OrderTest> {
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     double total = 0;
//     for (var i = 0; i < OrderServices.formRows.length; i++) {
//       if (OrderServices.formRows[i].selectedProduct != null) {
//         total += OrderServices.formRows[i].productQuantity;
//         setState(() {
//           OrderServices.totalOrderPrice = total;
//         });
//       }
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Single Order"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: OrderServices.formRows.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         TextFormField(
//                           controller:
//                           OrderServices.formRows[index].stopController,
//                           decoration: InputDecoration(
//                             border: const OutlineInputBorder(),
//                             labelText: ' Enter Stop ${index + 1}',
//                           ),
//                           validator: (value) {
//                             if (value == null || value.trim().isEmpty) {
//                               return 'Please enter a valid stop name';
//                             }
//                             return null;
//                           },
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           validator: (value) {
//                             if (value == null || value.trim().isEmpty) {
//                               return 'Please enter a valid shop name';
//                             }
//                             return null;
//                           },
//                           controller:
//                           OrderServices.formRows[index].shopController,
//                           decoration: InputDecoration(
//                             border: const OutlineInputBorder(),
//                             labelText: 'Enter Shop ${index + 1}',
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         DropdownButtonFormField<ProductProfile>(
//                           validator: (value) {
//                             return value == null ? 'Select a product' : null;
//                           },
//                           decoration: const InputDecoration(
//                             border: OutlineInputBorder(),
//                             hintText: 'Select a product',
//                           ),
//                           value: OrderServices.formRows[index].selectedProduct,
//                           onChanged: (value) {
//                             setState(() {
//                               OrderServices.formRows[index].updateProduct(
//                                   value!,
//                                   value.productPrice.toDouble() *
//                                       value.productMOQ.toInt());
//                             });
//                           },
//                           items: OrderServices.products
//                               .map((e) => DropdownMenuItem(
//                               value: e, child: Text(e.productName)))
//                               .toList(),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           enabled: false,
//                           decoration: InputDecoration(
//                             border: const OutlineInputBorder(),
//                             labelText:
//                             'Price: ${OrderServices.formRows[index].selectedProduct?.productPrice ?? ""}',
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller:
//                           OrderServices.formRows[index].moqController,
//                           validator: (value) {
//                             int? moq = int.tryParse(value ?? "");
//                             if (moq == null || moq < 5 || moq > 50) {
//                               return 'Enter a valid MOQ between 5 and 50';
//                             }
//                             return null;
//                           },
//                           onChanged: (value) {
//                             int? moq = int.tryParse(value ?? "");
//                             if (moq != null) {
//                               setState(() {
//                                 OrderServices.totalMoqUsed =
//                                     OrderServices.totalMoqUsed -
//                                         OrderServices.formRows[index].moqUsed +
//                                         moq; // Update the total MOQ used
//                                 OrderServices.formRows[index].moqUsed =
//                                     moq; // Update the moqUsed value for this row
//                                 OrderServices.formRows[index].updateProduct(
//                                   OrderServices
//                                       .formRows[index].selectedProduct!,
//                                   OrderServices.formRows[index].selectedProduct!
//                                       .productPrice
//                                       .toDouble() *
//                                       moq,
//                                 );
//                               });
//                             }
//                           },
//                           decoration: InputDecoration(
//                             border: const OutlineInputBorder(),
//                             labelText:
//                             'Enter MOQ: ${OrderServices.formRows[index].stopIndex}',
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           enabled: false,
//                           decoration: InputDecoration(
//                             border: const OutlineInputBorder(),
//                             labelText:
//                             'Total Price: ${OrderServices.formRows[index].productQuantity}',
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         if (index < OrderServices.formRows.length - 1)
//                           Center(
//                             child: Text(
//                               "Add New Stop ${OrderServices.formRows[index].stopIndex}",
//                               style: const TextStyle(
//                                   color: Colors.green, fontSize: 22),
//                             ),
//                           ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//               TextFormField(
//                 enabled: false,
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(),
//                   hintText:
//                   'Total Order Price: ${OrderServices.totalOrderPrice}',
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: InkWell(
//                       onTap: () {
//                         if (_formKey.currentState!.validate()) {
//                           OrderServices.addFormRow(context, this);
//                         }
//                       },
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.06,
//                         decoration: BoxDecoration(
//                           color: Colors.lightGreen,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: const Center(
//                             child: Text(
//                               "Add More Stop",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.normal,
//                                   letterSpacing: 1),
//                             )),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   Expanded(
//                     child: InkWell(
//                       onTap: () {
//                         if (_formKey.currentState!.validate()) {
//                           OrderServices.placeOrder(context);
//                         }
//                       },
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.06,
//                         decoration: BoxDecoration(
//                           color: Colors.lightGreen,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: const Center(
//                             child: Text(
//                               "Payment Processed",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.normal,
//                                   letterSpacing: 1),
//                             )),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

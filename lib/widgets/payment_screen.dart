import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:maximagri/models/order_model/single_order_model.dart';
import 'package:maximagri/widgets/order_services.dart';

class PaymentScreen extends StatefulWidget {
  final SingleOrder order;
  final TextEditingController bankNameController;
  final TextEditingController bankAmountController;

  const PaymentScreen({
    Key? key,
    required this.order,
    required this.bankNameController,
    required this.bankAmountController,
  }) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _formKey = GlobalKey<FormState>();

  File? _imageFile;
  String? _uploadedFileUrl;

  Future<void> _uploadImage() async {
    try {
      if (_imageFile == null) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please select an image.'),
        ));
        return;
      }

      final storageRef = FirebaseStorage.instance
          .ref()
          .child('bank_receipts/${widget.order.orderSerial}.jpg');
      await storageRef.putFile(_imageFile!);

      final downloadUrl = await storageRef.getDownloadURL();

      setState(() {
        _uploadedFileUrl = downloadUrl;
      });

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Image uploaded successfully!'),
      ));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Failed to upload image.'),
      ));
    }
  }

  void _onImageButtonPressed() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = File(pickedFile!.path);
    });
    await _uploadImage();
  }

  void _onPaymentProcessed() async {
    if (_formKey.currentState!.validate()) {
      widget.order.orderPayment.bankPaymentDetails.bankName =
          widget.bankNameController.text;
      widget.order.orderPayment.bankPaymentDetails.bankAmount =
          double.tryParse(widget.bankAmountController.text) ?? 0.0;
      widget.order.orderPayment.bankPaymentDetails.bankReceipt =
          _uploadedFileUrl ?? '';
      //   await OrderServices.placeOrder(context);

      try {
        await FirebaseFirestore.instance
            .collection('orders')
            .add(widget.order.toJson());

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Order added successfully!'),
        ));

        Navigator.pop(context);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Failed to add order.'),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment for Order ${widget.order.orderSerial}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: widget.bankNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bank Name',
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a valid bank name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a valid amount';
                  }
                  return null;
                },
                controller: widget.bankAmountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Amount',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _onImageButtonPressed,
                child: const Text('Select Image of Bank Receipt'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _onPaymentProcessed,
                child: const Text('Process Payment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

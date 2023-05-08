import 'package:flutter/material.dart';

class ContactUsMobilePage extends StatelessWidget {
  final Widget pageDrawer;
  final Widget pageNavigation;
  const ContactUsMobilePage(
      {Key? key, required this.pageDrawer, required this.pageNavigation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactUsMobilePage'),
      ),
      drawer: pageDrawer,
      bottomNavigationBar: pageNavigation,
    );
  }
}

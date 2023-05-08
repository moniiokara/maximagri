import 'package:flutter/material.dart';

class TermsAndConditionsMobilePage extends StatelessWidget {
  final Widget pageDrawer;
  final Widget pageNavigation;
  const TermsAndConditionsMobilePage(
      {Key? key, required this.pageDrawer, required this.pageNavigation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermsAndConditionsMobilePage'),
      ),
      drawer: pageDrawer,
      bottomNavigationBar: pageNavigation,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.red,
                image: const DecorationImage(
                  image: NetworkImage(""),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Terms & Conditions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Your description here. This is where you can provide more information about the topic.'
                    ' Feel free to add more content and customize the text as needed. Feel free to add more content and customize the text as needed.'
                    ' Feel free to add more content and customize the text as needed. Feel dummy text of the printing and typesetting industry as needed. '
                    'Feel free to add more content and customize the text as needed. Lorem Ipsum has been the industrys standard dummy text ever'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AboutUsDesktopPage extends StatelessWidget {
  final Widget pageDrawer;
  const AboutUsDesktopPage({Key? key, required this.pageDrawer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutUsDesktopPage'),
      ),
      //    drawer: pageDrawer,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          pageDrawer,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.red,
                      image: const DecorationImage(
                        image: NetworkImage(""),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'About Us',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

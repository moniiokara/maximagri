import 'package:flutter/material.dart';

class HomePageOption extends StatelessWidget {
  final Function onTap;
  final String title;
  final String subtitle;
  final IconData iconData;

  HomePageOption({
    Key? key,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 2,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          //width: screenSize.width * 0.3,
          // height: screenSize.height * 0.30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: [Colors.lightGreenAccent, Colors.grey],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 26,
                        child: Icon(
                          iconData,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        title,
                        // "Place Order",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    //  crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          subtitle,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 14,
                        child: Icon(
                          Icons.navigate_next,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

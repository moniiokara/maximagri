import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/dealer_drawer.dart';
import 'package:maximagri/widgets/order_display_card.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class UserDisplayPage extends StatefulWidget {
  const UserDisplayPage({Key? key}) : super(key: key);

  @override
  State<UserDisplayPage> createState() => _UserDisplayPageState();
}

class _UserDisplayPageState extends State<UserDisplayPage> {
  final auth = FirebaseAuth.instance;
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
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("userProfile")
                  .where('userType', isEqualTo: 'dealer')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final doc = snapshot.data!.docs[index];
                        final userAddress = doc.get('userAddress');
                        final String address =
                            '${userAddress['province']}, ${userAddress['tehsil']}, ${userAddress['district']}';

                        return UserInfoCard(
                          name: doc.get('userName'),
                          userType: doc.get('userType'),
                          cnic: doc.get('userCNIC'),
                          mobile: doc.get('userMobile'),
                          address: address,
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}

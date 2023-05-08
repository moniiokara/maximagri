import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_officer_navigation.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class SalesOfficerDealersListMobilePage extends StatefulWidget {
  const SalesOfficerDealersListMobilePage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerDealersListMobilePage> createState() =>
      _SalesOfficerDealersListMobilePageState();
}

class _SalesOfficerDealersListMobilePageState
    extends State<SalesOfficerDealersListMobilePage> {

  final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerDealersListMobilePage'),
      ),
      drawer: const SalesOfficerDrawer(),
      bottomNavigationBar: const SalesOfficerNavigation(selectedIndex: 2),
      body: Column(
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
                      final zmUID = doc.get('accountUID');
                      final userAddress = doc.get('userAddress');
                      final String address =
                          '${userAddress['province']}, ${userAddress['tehsil']}, ${userAddress['district']}';

                      // print(zmUID['zonalManagerUID']);
                      // print(uid);
                      Widget userInfoCard;
                      if (zmUID['salesOfficerUID'] == uid) {
                        userInfoCard = UserInfoCard(
                          onTap: () {

                          },
                          name: doc.get('userName'),
                          userType: doc.get('userType'),
                          cnic: doc.get('userCNIC'),
                          mobile: doc.get('userMobile'),
                          address: address,
                        );
                      } else {
                        userInfoCard = const SizedBox.shrink();
                      }

                      return userInfoCard;
                    },
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}

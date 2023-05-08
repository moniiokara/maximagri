import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_manager_navigation.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class SalesManagerSalesOfficerListMobilePage extends StatefulWidget {
  const SalesManagerSalesOfficerListMobilePage({Key? key}) : super(key: key);

  @override
  State<SalesManagerSalesOfficerListMobilePage> createState() =>
      _SalesManagerSalesOfficerListMobilePageState();
}

class _SalesManagerSalesOfficerListMobilePageState
    extends State<SalesManagerSalesOfficerListMobilePage> {

  final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerSalesOfficerListMobilePage'),
      ),
      drawer: const SalesManagerDrawer(),
      bottomNavigationBar: const SalesManagerNavigation(selectedIndex: 3),
      body: Column(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("userProfile")
                .where('userType', isEqualTo: 'salesOfficer')
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
                      if (zmUID['salesManagerUID'] == uid) {
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
              return Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}

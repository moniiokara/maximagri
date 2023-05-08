import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class SalesOfficerDealersListDesktopPage extends StatefulWidget {
  const SalesOfficerDealersListDesktopPage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerDealersListDesktopPage> createState() =>
      _SalesOfficerDealersListDesktopPageState();
}

class _SalesOfficerDealersListDesktopPageState
    extends State<SalesOfficerDealersListDesktopPage> {

  final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerDealersListDesktopPage'),
      ),

      body: Row(
        children: [
          SalesOfficerDrawer(),
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("userProfile")
                .where('userType', isEqualTo: 'dealer')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final filteredDocs = snapshot.data!.docs
                    .where((doc) =>
                doc.get('accountUID')['salesOfficerUID'] == uid)
                    .toList();

                return Expanded(
                  child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      childAspectRatio: 2,
                    ),
                    itemCount: filteredDocs.length,
                    itemBuilder: (context, index) {
                      final doc = filteredDocs[index];
                      final userAddress = doc.get('userAddress');
                      final String address =
                          '${userAddress['province']}, ${userAddress['tehsil']}, ${userAddress['district']}';

                      return UserInfoCard(
                        onTap: () {},
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
              return const Center(child: CircularProgressIndicator());
            },
          ),
          // StreamBuilder(
          //   stream: FirebaseFirestore.instance
          //       .collection("userProfile")
          //       .where('userType', isEqualTo: 'dealer')
          //       .snapshots(),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return Expanded(
          //         child: GridView.builder(
          //           gridDelegate:
          //           const SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 2,
          //             mainAxisSpacing: 4.0,
          //             crossAxisSpacing: 4.0,
          //             childAspectRatio: 2,
          //           ),
          //           itemCount: snapshot.data!.docs.length,
          //           itemBuilder: (context, index) {
          //             final doc = snapshot.data!.docs[index];
          //             final zmUID = doc.get('accountUID');
          //             final userAddress = doc.get('userAddress');
          //             final String address =
          //                 '${userAddress['province']}, ${userAddress['tehsil']}, ${userAddress['district']}';
          //
          //             // print(zmUID['zonalManagerUID']);
          //             // print(uid);
          //             Widget userInfoCard;
          //             if (zmUID['salesOfficerUID'] == uid) {
          //               userInfoCard = UserInfoCard(
          //                 onTap: () {
          //
          //                 },
          //                 name: doc.get('userName'),
          //                 userType: doc.get('userType'),
          //                 cnic: doc.get('userCNIC'),
          //                 mobile: doc.get('userMobile'),
          //                 address: address,
          //               );
          //             } else {
          //               userInfoCard = const SizedBox.shrink();
          //             }
          //
          //             return userInfoCard;
          //           },
          //         ),
          //       );
          //     } else if (snapshot.hasError) {
          //       return Center(child: Text('Error: ${snapshot.error}'));
          //     }
          //     return const Center(child: CircularProgressIndicator());
          //   },
          // ),
        ],
      ),
    );
  }
}

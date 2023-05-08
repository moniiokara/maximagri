import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class ZonalManagerSalesManagerListDesktopPage extends StatefulWidget {
  const ZonalManagerSalesManagerListDesktopPage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerSalesManagerListDesktopPage> createState() =>
      _ZonalManagerSalesManagerListDesktopPageState();
}

class _ZonalManagerSalesManagerListDesktopPageState
    extends State<ZonalManagerSalesManagerListDesktopPage> {
  final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerSalesManagerListDesktopPage'),
      ),
      body: Row(
        children: [
          ZonalManagerDrawer(),
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("userProfile")
                .where('userType', isEqualTo: 'salesManager')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final filteredDocs = snapshot.data!.docs
                    .where((doc) =>
                        doc.get('accountUID')['zonalManagerUID'] == uid).toList();
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
          //       .where('userType', isEqualTo: 'salesManager')
          //       .snapshots(),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return Expanded(
          //         child: GridView.builder(
          //           gridDelegate:
          //               const SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 2,
          //             mainAxisSpacing: 2.0,
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
          //             Widget userInfoCard;
          //             if (zmUID['zonalManagerUID'] == uid) {
          //               userInfoCard = UserInfoCard(
          //                 onTap: () {},
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

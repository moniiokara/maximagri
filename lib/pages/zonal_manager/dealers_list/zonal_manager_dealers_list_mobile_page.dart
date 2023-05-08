import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/zonal_manager_navigation.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class ZonalManagerDealersListMobilePage extends StatefulWidget {
  const ZonalManagerDealersListMobilePage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerDealersListMobilePage> createState() =>
      _ZonalManagerDealersListMobilePageState();
}

class _ZonalManagerDealersListMobilePageState
    extends State<ZonalManagerDealersListMobilePage> {

  final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerDealersListMobilePage'),
      ),
      drawer: const ZonalManagerDrawer(),
      bottomNavigationBar: const ZonalManagerNavigation(selectedIndex: 3),
      body: Column(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("userProfile")
                .where('userType', isEqualTo: 'dealer')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // print(uid);
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
                      if (zmUID['zonalManagerUID'] == uid) {
                        userInfoCard = UserInfoCard(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SalesOfficersScreen(
                            //             salesManagerUID: doc.get('userUID'))));
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
                  )
                  ,
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

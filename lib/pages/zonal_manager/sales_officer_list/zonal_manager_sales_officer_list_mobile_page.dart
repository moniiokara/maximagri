// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
// import 'package:maximagri/widgets/navigation/zonal_manager_navigation.dart';
// import 'package:maximagri/widgets/user_info_card.dart';
//
// class ZonalManagerSalesOfficerListMobilePage extends StatefulWidget {
//   const ZonalManagerSalesOfficerListMobilePage({Key? key}) : super(key: key);
//
//   @override
//   State<ZonalManagerSalesOfficerListMobilePage> createState() =>
//       _ZonalManagerSalesOfficerListMobilePageState();
// }
//
// class _ZonalManagerSalesOfficerListMobilePageState
//     extends State<ZonalManagerSalesOfficerListMobilePage> {
//
//   final uid = FirebaseAuth.instance.currentUser?.uid;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('ZonalManagerSalesOfficerListMobilePage'),
//       ),
//       drawer: const ZonalManagerDrawer(),
//       bottomNavigationBar: const ZonalManagerNavigation(selectedIndex: 1),
//       body: Column(
//         children: [
//           StreamBuilder(
//             stream: FirebaseFirestore.instance
//                 .collection("userProfile")
//                 .where('userType', isEqualTo: 'salesOfficer')
//                 .snapshots(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Expanded(
//                   child: ListView.builder(
//                     itemCount: snapshot.data!.docs.length,
//                     itemBuilder: (context, index) {
//                       final doc = snapshot.data!.docs[index];
//                       final zmUID = doc.get('accountUID');
//                       final userAddress = doc.get('userAddress');
//                       final String address =
//                           '${userAddress['province']}, ${userAddress['tehsil']}, ${userAddress['district']}';
//
//                       // print(zmUID['zonalManagerUID']);
//                       // print(uid);
//                       Widget userInfoCard;
//                       if (zmUID['zonalManagerUID'] == uid) {
//                         userInfoCard = UserInfoCard(
//                           onTap: () {
//
//                           },
//                           name: doc.get('userName'),
//                           userType: doc.get('userType'),
//                           cnic: doc.get('userCNIC'),
//                           mobile: doc.get('userMobile'),
//                           address: address,
//                         );
//                       } else {
//                         userInfoCard = const SizedBox.shrink();
//                       }
//
//                       return userInfoCard;
//                     },
//                   ),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(child: Text('Error: ${snapshot.error}'));
//               }
//               return Center(child: CircularProgressIndicator());
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class ZonalManagerSalesOfficerListMobilePage extends StatefulWidget {

  final String? zonalManagerUid;
  final String? userType;
  final String? title;

  const ZonalManagerSalesOfficerListMobilePage({Key? key,  this.zonalManagerUid,  this.userType,  this.title}) : super(key: key);

  @override
  State<ZonalManagerSalesOfficerListMobilePage> createState() => _ZonalManagerSalesOfficerListMobilePageState();
}

class _ZonalManagerSalesOfficerListMobilePageState extends State<ZonalManagerSalesOfficerListMobilePage> {

 // final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title!),),
      body: buildSalesManagerGrid(widget.zonalManagerUid!, widget.userType!),
    );
  }
}

Widget buildSalesManagerGrid(String zonalManagerUid, String userType) {

  final uid = FirebaseAuth.instance.currentUser?.uid;

  return StreamBuilder(
    stream: FirebaseFirestore.instance
        .collection("userProfile")
        .where('userType', isEqualTo: userType)
        .snapshots(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        final filteredDocs = snapshot.data!.docs
            .where((doc) => doc.get('accountUID')['zonalManagerUID'] == zonalManagerUid)
            .toList();

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
        );
      } else if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      }
      return const Center(child: CircularProgressIndicator());
    },
  );
}


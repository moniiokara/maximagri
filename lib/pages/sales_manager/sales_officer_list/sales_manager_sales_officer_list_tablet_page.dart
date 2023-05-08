import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';
import 'package:maximagri/widgets/navigation/sales_manager_navigation.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class SalesManagerSalesOfficerListTabletPage extends StatefulWidget {
  const SalesManagerSalesOfficerListTabletPage({Key? key}) : super(key: key);

  @override
  State<SalesManagerSalesOfficerListTabletPage> createState() =>
      _SalesManagerSalesOfficerListTabletPageState();
}

class _SalesManagerSalesOfficerListTabletPageState
    extends State<SalesManagerSalesOfficerListTabletPage> {

  final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerSalesOfficerListTabletPage'),
      ),
      drawer: const SalesManagerDrawer(),
      bottomNavigationBar: const SalesManagerNavigation(selectedIndex: 3),
      body: Row(
        children: [

          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("userProfile")
                .where('userType', isEqualTo: 'salesOfficer')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final filteredDocs = snapshot.data!.docs
                    .where((doc) =>
                doc.get('accountUID')['salesManagerUID'] == uid)
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
        ],
      ),
    );
  }
}

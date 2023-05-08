import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class OperationsDealersListMobilePage extends StatefulWidget {
  const OperationsDealersListMobilePage({Key? key}) : super(key: key);

  @override
  State<OperationsDealersListMobilePage> createState() =>
      _OperationsDealersListMobilePageState();
}

class _OperationsDealersListMobilePageState
    extends State<OperationsDealersListMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsDealersListMobilePage'),
      ),
      drawer: const OperationsDrawer(),
      bottomNavigationBar: const OperationsNavigation(selectedIndex: 3),
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
    );
  }
}

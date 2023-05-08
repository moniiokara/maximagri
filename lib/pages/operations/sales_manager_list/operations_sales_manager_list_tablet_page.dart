import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class OperationsSalesManagerListTabletPage extends StatefulWidget {
  const OperationsSalesManagerListTabletPage({Key? key}) : super(key: key);

  @override
  State<OperationsSalesManagerListTabletPage> createState() =>
      _OperationsSalesManagerListTabletPageState();
}

class _OperationsSalesManagerListTabletPageState
    extends State<OperationsSalesManagerListTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsSalesManagerListTabletPage'),
      ),
      drawer: const OperationsDrawer(),
      bottomNavigationBar: const OperationsNavigation(selectedIndex: 1),
      body: Row(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("userProfile")
                .where('userType', isEqualTo: 'salesManager')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      childAspectRatio: 2,
                    ),
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
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}

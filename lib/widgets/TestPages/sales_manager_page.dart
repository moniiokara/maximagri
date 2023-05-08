import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:maximagri/widgets/user_info_card.dart';

class SalesManagerScreen extends StatefulWidget {
  final String zonalManagerUid;
  final String userType;
  final String title;

  SalesManagerScreen({required this.zonalManagerUid, required this.userType, required this.title});

  @override
  _SalesManagerScreenState createState() => _SalesManagerScreenState();
}

class _SalesManagerScreenState extends State<SalesManagerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: buildSalesManagerGrid(widget.zonalManagerUid, widget.userType),
    );
  }

  Widget buildSalesManagerGrid(String zonalManagerUid, String userType) {
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

          return Expanded(
            child: GridView.builder(
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
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

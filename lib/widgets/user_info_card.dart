import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final String name;
  final String userType;
  final String cnic;
  final String mobile;
  final String address;
 final Function? onTap;

  UserInfoCard({
    this.onTap,
    required this.name,
    required this.userType,
    required this.cnic,
    required this.mobile,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap!();
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  Text('Name: $name',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.person_outline,
                    size: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  Text('User Type: $userType',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.confirmation_number,
                    size: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  Text('CNIC: $cnic',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  Text('Mobile: $mobile',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  Text('Address: $address',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

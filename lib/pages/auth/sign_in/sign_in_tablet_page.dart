import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInTabletPage extends StatefulWidget {
  const SignInTabletPage({Key? key}) : super(key: key);

  @override
  State<SignInTabletPage> createState() => _SignInTabletPageState();
}

class _SignInTabletPageState extends State<SignInTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Image(
            image: AssetImage(
              'lib/assets/images/maxim_logo.png',
            ),
            width: 300,
          ),
          SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text('SignInTabletPage'),
                ),
                ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: 'operations@microcorporate.com',
                          password: '8808044');
                    },
                    child: const Text('SIGN IN OPERATIONS')),
                OutlinedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: 'zonalmanager@microcorporate.com',
                          password: '8808044');
                    },
                    child: const Text('SIGN IN ZONAL MANAGER')),
                ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: 'salesmanager@microcorporate.com',
                          password: '8808044');
                    },
                    child: const Text('SIGN IN SALES MANAGER')),
                OutlinedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: 'salesofficer@microcorporate.com',
                          password: '8808044');
                    },
                    child: const Text('SIGN IN SALES OFFICER')),
                ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: 'dealer@microcorporate.com',
                          password: '8808044');
                    },
                    child: const Text('SIGN IN DEALER')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

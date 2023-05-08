import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInMobilePage extends StatefulWidget {
  const SignInMobilePage({Key? key}) : super(key: key);

  @override
  State<SignInMobilePage> createState() => _SignInMobilePageState();
}

class _SignInMobilePageState extends State<SignInMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage(
                'lib/assets/images/maxim_logo.png',
              ),
              width: 200,
            ),
            const Center(child: Text('SignInMobilePage')),
            SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
      ),
    );
  }
}

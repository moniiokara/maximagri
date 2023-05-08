import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:maximagri/config/app_theme.dart';
import 'package:maximagri/utilities/user_authentication.dart';
import 'package:maximagri/config/app_dark_theme.dart';
import 'package:maximagri/config/routes.dart';
import 'package:maximagri/widgets/TestPages/place_order_page.dart';
import 'package:maximagri/widgets/order_test.dart';
import 'package:maximagri/widgets/single_order.dart';
import 'package:maximagri/widgets/user_display_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

   // runApp(
   //   DevicePreview(
   //     enabled: !kReleaseMode,
   //     builder: (context) => MaximAgri(), // Wrap your app
   //   ),
   // );

  runApp(const MaximAgri());
}

class MaximAgri extends StatelessWidget {
  const MaximAgri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maxim Agri',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      darkTheme: appDarkTheme(),
     routes: customRoutes,
      home: const UserAuthentication(),
     // home: UserDisplayPage(),
      // home: DynamicForm(),
     // home: OrderTest()
      // home: PlaceOrderPage(),


    );
  }
}

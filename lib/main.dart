import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';
import 'package:tripo_app/pages/LandPage.dart';
import 'package:tripo_app/pages/Signup_Signin_Page.dart';
import 'package:go_router/go_router.dart';
import 'package:tripo_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         // ChangeNotifierProvider<TripsProvider>(create: (_) => TripsProvider()),
//         ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LandPage(),
      ),
      GoRoute(
        path: '/SignupSigninPage',
        builder: (context, state) => SignupSigninPage(),
      ),
    ],
  );
}

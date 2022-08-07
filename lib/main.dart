import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';
import 'package:tripo_app/models/trip.dart';
import 'package:tripo_app/pages/AllTrips.dart';
import 'package:tripo_app/pages/ExplorePage.dart';
import 'package:tripo_app/pages/TripDetails.dart';
import 'package:tripo_app/pages/VaviBar.dart';
import 'package:tripo_app/pages/LandPage.dart';
import 'package:tripo_app/pages/Signup_Signin_Page.dart';
import 'package:go_router/go_router.dart';
import 'package:tripo_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'dart:html';

import 'package:tripo_app/providers/trips_providers.dart';
import 'package:tripo_app/widgets/distenationCard.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TripsProvider>(create: (_) => TripsProvider()),
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
          builder: (context, state) =>
              // VaviBar(),
              //     DisCard(
              //   trips: state.extra as Trips,
              // ),
              SignupSigninPage()),
      GoRoute(
        path: '/SignupSigninPage',
        builder: (context, state) => SignupSigninPage(),
      ),
      GoRoute(
        path: '/VaviBar',
        builder: (context, state) => VaviBar(),
      ),
      GoRoute(
        path: '/ExplorePage',
        builder: (context, state) => ExplorePage(),
      ),
      GoRoute(
        path: '/TripDetails',
        builder: (context, state) => TripDetails(trip: state.extra as Trip),
      ),
      GoRoute(
        path: '/AllTrip',
        builder: (context, state) => AllTrip(),
      ),
    ],
  );
}

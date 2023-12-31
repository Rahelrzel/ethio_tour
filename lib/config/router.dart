import 'package:ethio_tour/components/bottom_nav_bar.dart';
import 'package:ethio_tour/config/colors.dart';
import 'package:ethio_tour/screen/account_setup.dart';
import 'package:ethio_tour/screen/calendar.dart';
import 'package:ethio_tour/screen/currency.dart';
import 'package:ethio_tour/screen/calendar_converter.dart';
import 'package:ethio_tour/screen/homepage.dart';
import 'package:ethio_tour/screen/login.dart';
import 'package:ethio_tour/screen/intro.dart';
import 'package:ethio_tour/screen/place_details.dart';
import 'package:ethio_tour/screen/profile.dart';
import 'package:ethio_tour/screen/register.dart';
import 'package:ethio_tour/screen/search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      path: '/intro2',
      builder: (context, state) => const Intro2(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/account-setup',
      builder: (context, state) => const AccountSetupPage(),
    ),
    ShellRoute(
      builder: (context, state, child) => Scaffold(
        backgroundColor: KPrimary.shade800,
        body: child,
        bottomNavigationBar: const BottomNavBar(),
      ),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/place-details/:id',
          builder: (context, state) => PlaceDetails(
            id: int.parse(
              state.pathParameters['id']!,
            ),
          ),
        ),
        GoRoute(
          path: '/calendar',
          builder: (context, state) => const CalendarPage(),
        ),
        GoRoute(
          path: '/calendar/converter',
          builder: (context, state) => CalendarConverterPage(),
        ),
        GoRoute(
          path: '/currency',
          builder: (context, state) => const CurrencyConverter(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => Profile(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => Search(),
        ),
      ],
    ),
  ],
);

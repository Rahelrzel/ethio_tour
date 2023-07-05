import 'package:ethio_tour/config/colors.dart';
import 'package:ethio_tour/config/router.dart';
import 'package:ethio_tour/screen/intro.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: EthioTour()));
}

class EthioTour extends StatelessWidget {
  const EthioTour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: KPrimary.shade500),
        textTheme: GoogleFonts.ptSansTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}

///
/// TODO:Configure Routing
/// TODO:Configure Localization
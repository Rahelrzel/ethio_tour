import 'package:ethio_tour/screen/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(EthioTour());
}

class EthioTour extends StatelessWidget {
  const EthioTour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.ptSansTextTheme(Theme.of(context).textTheme)),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox.expand(
              child: Image(
                image: AssetImage("assets/images/ethio.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox.expand(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF367368),
                      Color(0x8C2D5C55),
                      Color(0x7A264B46),
                      Color(0xFF22403D),
                    ],
                    stops: [0, 0.1912, 0.6805, 1],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('explore the beauty of ethiopia',
                      style: GoogleFonts.lobster(
                        color: Colors.white,
                        fontSize: 50,
                      )),
                  const Text(
                    'Discover the wonders of Ethiopia! Explore ancient rock-hewn churches, breathtaking landscapes, vibrant markets, and rich cultural traditions.',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Page2()),
          );
        },
        label: Icon(Icons.arrow_right_alt),
        foregroundColor: Color(0xFF22403D),
        backgroundColor: Color(0xFFD99E6A),
      ),
    );
  }
}

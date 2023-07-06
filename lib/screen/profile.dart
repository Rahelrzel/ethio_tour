import 'package:ethio_tour/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimary.shade900,
      body: Column(
        children: [
          Container(
            height: 200.0,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 60.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: KPrimary.shade500,
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(300, 60)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: MediaQuery.of(context).size.width / 2 - 60.0,
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 60.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Naruto Uzumaki',
                  style:
                      GoogleFonts.lobster(fontSize: 24.0, color: Colors.white),
                ),
                SizedBox(height: 10.0),
                Text(
                  ' Passionate about exploring the world and embracing new experiences! ',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    // Logic for changing language
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(KAccentColor.shade500)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Change Language',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(KAccentColor.shade600)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:
                          Text('Logout', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

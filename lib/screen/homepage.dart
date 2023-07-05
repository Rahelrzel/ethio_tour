import 'package:cached_network_image/cached_network_image.dart';
import 'package:ethio_tour/data/places_data.dart';
import 'package:ethio_tour/models/categorie/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF22403D),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF22403D),
            foregroundColor: Colors.white,
            pinned: true,
            expandedHeight: 200,
            // collapsedHeight: 0,
            leadingWidth: double.infinity,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 45, 92, 85)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    // radius: 10,
                    backgroundImage: AssetImage(
                      "assets/images/protect.jpeg",
                    ),
                  )
                ],
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  SizedBox.expand(
                    child: Image.asset(
                      "assets/images/home-appbar.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(0, 54, 115, 104),
                          Color.fromARGB(61, 45, 92, 85),
                          Color(0x7A264B46),
                          Color.fromARGB(255, 20, 41, 39),
                        ],
                        stops: [0, 0.1912, 0.5, 1],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: Text(
                      "Explore Ethiopia like a local".toUpperCase(),
                      style: GoogleFonts.lobster(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              // collapseMode: CollapseMode.none,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle("Historical Sites"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 260,
                      width: size.width,
                      child: ListView.builder(
                        itemCount: historicalAttractions.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return PlaceCard(
                            place: historicalAttractions[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle("Natural Landscapes"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 260,
                      width: size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return PlaceCard(
                            place: places[0],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }

  Padding sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/place-details/$place.id');
      },
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(21, 38, 38, 0.75),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(
                  imageUrl: place.pictures[0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              this.place.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              this.place.region,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: List.generate(5, (index) => index + 1)
                  .map(
                    (e) => Icon(
                      e <= this.place.rating
                          ? Icons.star_rounded
                          : Icons.star_outline_rounded,
                      color: Color(0xFFD99E6A),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ethio_tour/controller/categories/place_controller.dart';
import 'package:ethio_tour/data/places_data.dart';
import 'package:ethio_tour/models/categorie/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _Searchstate();
}

class _Searchstate extends State<Search> {
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
            collapsedHeight: 80,
            leadingWidth: double.infinity,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
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
                            onPressed: () {
                              context.go('/search');
                            },
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
          ),
        ],
      ),
    );
  }
}

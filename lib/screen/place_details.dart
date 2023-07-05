// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ethio_tour/config/colors.dart';
import 'package:ethio_tour/controller/categories/place_controller.dart';
import 'package:ethio_tour/screen/review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaceDetails extends HookConsumerWidget {
  const PlaceDetails({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var place = ref.watch(currentPlaceProvider);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KPrimary.shade700,
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  width: size.width,
                  height: size.height * .4,
                  child: Header(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0)
                      .copyWith(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "${place?.name}",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${place?.region}",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: const [
                      TabBar(
                        indicatorColor: KAccentColor.shade500,
                        labelColor: KAccentColor.shade500,
                        unselectedLabelColor: Colors.white70,
                        tabs: [
                          Tab(
                            text: 'Overview',
                          ),
                          Tab(
                            text: 'Map',
                          ),
                          Tab(
                            text: 'Review',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: size.height,
                  child: TabBarView(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: KAccentColor.shade400,
                                      size: 50,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "${place?.rating}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                          ),
                                        ),
                                        Text(
                                          "Rating",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white70,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.cloudy_snowing,
                                      color: KAccentColor.shade400,
                                      size: 50,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "16°",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                          ),
                                        ),
                                        Text(
                                          "Temp",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white70,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "${place?.desc}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: GoogleMap(
                          mapType: MapType.hybrid,
                          initialCameraPosition: CameraPosition(
                            target: LatLng(
                              place?.latitude ?? 0,
                              place?.longitude ?? 0,
                            ),
                            zoom: 15,
                          ),
                        ),
                      ),
                      Review(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var current = useState(0);
    var size = MediaQuery.of(context).size;
    var place = ref.watch(currentPlaceProvider);
    var imgs = place?.pictures ?? [];

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox.expand(
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: size.height * .4,
                  padEnds: false,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    current.value = index;
                  }),
              items: imgs
                  .map(
                    (e) => SizedBox.expand(
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(e),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: KPrimary.shade100.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          height: 8,
          child: Center(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  width: current.value == index ? 30 : 8,
                  decoration: BoxDecoration(
                    color:
                        current.value == index ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  duration: Duration(
                    milliseconds: 240,
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 5),
              itemCount: imgs.length,
            ),
          ),
        ),
      ],
    );
  }
}

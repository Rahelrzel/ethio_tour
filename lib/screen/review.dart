import 'package:ethio_tour/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: KPrimary.shade800,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Share Your Feedback and Help Others Discover Our Great Service!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 222, 222, 222),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: KAccentColor.shade400,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(''),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            minLines: 3,
                            maxLines: 6,
                            decoration: InputDecoration(
                              hintText: 'Add Your Feedback',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 174, 173, 173)),
                            ),
                            style: TextStyle(
                                color: Color.fromARGB(255, 184, 183, 183)),
                          ),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(21, 38, 38, 0.75),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: KPrimary.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reviews',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ReviewItem(
                    username: 'John Doe',
                    rating: 4,
                    comment: 'Great product! Highly recommended.',
                  ),
                  SizedBox(height: 10),
                  ReviewItem(
                    username: 'Jane Smith',
                    rating: 5,
                    comment: 'Excellent service. Will buy again!',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final String username;
  final int rating;
  final String comment;

  ReviewItem({
    required this.username,
    required this.rating,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 16,
            ),
            Text(
              rating.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(comment),
      ],
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TrainerDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name = 'Ahmed Saleh';
    final String imageUrl =
        'assets/instructor/ahmed_saleh.jpg';
    final String course = 'Mobile Application';
    final String email = 'ahmed@gmail.com';
    final String phone = '0123456789';
    final int studentsCount = 50;
    final int coursesCount = 3;
    double rating = 4.5;

    return Scaffold(
      appBar: AppBar(
        title: Text('Trainer Details', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(imageUrl),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("Course: $course",
                        style: TextStyle(color: Colors.blue)),
                    Text("Email: $email",
                        style: TextStyle(color: Colors.green)),
                    Text("Phone: $phone",
                        style: TextStyle(color: Colors.orange)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Students: $studentsCount",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Groups: $coursesCount",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            Text(
              "Trainer Gallery",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            CarouselSlider(
              items: [
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/gallery/1.jpg', fit: BoxFit.cover,)),
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/gallery/2.jpg', fit: BoxFit.cover,)),
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/gallery/3.jpg', fit: BoxFit.cover,)),
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/gallery/4.jpg', fit: BoxFit.cover,)),
              ],
              options: CarouselOptions(
                height: 250,
                autoPlay: true,
                autoPlayAnimationDuration: (Duration(seconds: 2)),
                reverse: false,
                initialPage: 0,
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
                autoPlayInterval: Duration(seconds: 5),
                viewportFraction: 1,
              ),),
            SizedBox(height: 20),
            Text(
              "Rating: $rating",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              itemSize: 20,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(height: 20),
            Divider(),
            Text(
              "Student Reviews",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                buildReview("Omnia", "Great trainer!"),
                buildReview("Sara", "Amazing course!"),
                buildReview("Ahmed", "Very helpful."),
              ],
            ),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Write your review...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialIcon(FontAwesomeIcons.facebook, Colors.blue),
                buildSocialIcon(FontAwesomeIcons.linkedin, Colors.blue[700]!),
                buildSocialIcon(FontAwesomeIcons.instagram, Colors.pink),
                buildSocialIcon(FontAwesomeIcons.whatsapp, Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGalleryImage(String url) {
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget buildReview(String studentName, String comment) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Text(studentName[0]),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  studentName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(comment),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSocialIcon(IconData icon, Color color) {
    return IconButton(
      icon: Icon(icon, color: color, size: 30),
      onPressed: () {},
    );
  }
}

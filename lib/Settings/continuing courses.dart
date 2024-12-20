import 'package:flutter/material.dart';
import '../Shared/components.dart';
import 'continuing_courses_details.dart';

class CourseScreen extends StatelessWidget {
  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Mobile Application',
      'image': 'assets/home/mobile_application.jpeg',
      'days': '16 Days',
      'time': '4:00 - 5:00',
    },
    {
      'title': '  Graphic Design ',
      'image': 'assets/home/graphic-design.jpg',
      'days': '16 Days',
      'time': '4:00 - 5:00',
    },
    {
      'title': 'Programming Basic',
      'image': 'assets/home/programming.jpeg',
      'days': '16 Days',
      'time': '4:00 - 5:00',
    },
    {
      'title': 'Web Development',
      'image': 'assets/home/web_developer.jpg',
      'days': '16 Days',
      'time': '4:00 - 5:00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Continuing Courses',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[900],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 0.8,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            final course = courses[index];
            return GestureDetector(
              onTap: () {
              if(course['title'] == 'Mobile Application'){
                navigateTo(context, ContinuingCoursesDetails());
              }else{
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Coming Soon!'),
                      content: Text('This course will be available soon'),
                      actions: [
                        TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text('OK',style: TextStyle(
                                color: Colors.green.shade900
                            ),))
                      ],
                    )
                );
              }
              },
              child: CourseCard(
                title: course['title'],
                image: course['image'],
                days: course['days'],
                time: course['time'],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String image;
  final String days;
  final String time;

  const CourseCard({
    required this.title,
    required this.image,
    required this.days,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 6.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  image,
                  height: 60,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 18, color: Colors.black),
                SizedBox(width: 8.0),
                Text(
                  days,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              children: [
                Icon(Icons.access_time, size: 18, color: Colors.black),
                SizedBox(width: 8.0),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final String title;
  final String image;
  final String days;
  final String time;

  const CourseDetailsScreen({
    required this.title,
    required this.image,
    required this.days,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image, height: 200),
              SizedBox(height: 16.0),
              Text(
                title,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_today, size: 24, color: Colors.black),
                  SizedBox(width: 8.0),
                  Text(
                    days,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time, size: 24, color: Colors.black),
                  SizedBox(width: 8.0),
                  Text(
                    time,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

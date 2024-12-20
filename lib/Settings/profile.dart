import 'package:flutter/material.dart';
import 'package:raya/Settings/certifications.dart';
import 'package:raya/Shared/app_brain.dart';
import '../Shared/components.dart';
import 'completed_courses.dart';
import 'continuing courses.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.green.shade900,
        title: Text('Profile', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white,),
            onPressed: () {
              // الإجراء عند الضغط على زر القلم
              print('Edit Profile clicked!');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // صورة الملف الشخصي
                CircleAvatar(
                  radius: 70,
                  backgroundImage:
                  AssetImage('assets/raya/logo.jpg'),
                ),
                SizedBox(height: 16), // المسافة بين الصورة والنص
                Text(
                  '${AppBrain.userName}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                // معلومات الشخصية (في Row مع 3 Columns)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: InfoColumn(
                            title: 'Program', value: '${AppBrain.program}')),
                    Expanded(child: InfoColumn(title: 'Level', value: '${AppBrain.level}')),
                  ],
                ),
                SizedBox(height: 30),
                // المربعات (الدورات المكتملة والمستمرة) في Row وبدون مسافات بينهما
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.start, // بدون مسافات بين المربعات
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: (){
                            navigateTo(context, CompletedCourses());
                          },
                          child: InfoCard(
                            value: '2',
                            title: 'Completed Courses',
                            color: Colors.green.shade700,
                          ),
                        )),
                    SizedBox(width: 10), // المسافة بين المربعات
                    Expanded(
                        child: GestureDetector(
                          onTap: (){
                            navigateTo(context, CourseScreen());
                          },
                          child: InfoCard(
                            value: 'Continuing',
                            title: 'Courses',
                            color: Colors.blue.shade700,
                            hasIcon: true,
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 30),
                // Row يحتوي على Completed Courses و See More
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Completed Courses',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // الإجراء عند الضغط على زر See More
                        print('See more clicked!');
                      },
                      child: Row(
                        children: [

                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                // الدورات المكتملة
                CourseCard(
                  title: 'Mobile Application',
                  completionDate: 'May 2024',
                  // رابط الصورة
                ),
                CourseCard(
                  title: 'Programming Basics',
                  completionDate: 'Dec 2024',

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget لعرض المعلومات في الأعمدة
class InfoColumn extends StatelessWidget {
  final String title;
  final String value;

  const InfoColumn({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}

// Widget لعرض الدورات المكتملة أو المستمرة
class InfoCard extends StatelessWidget {
  final String value;
  final String title;
  final Color color;
  final bool hasIcon;

  const InfoCard({
    required this.value,
    required this.title,
    required this.color,
    this.hasIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: color,
                ),
              ),
              SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: color,
                ),
              ),
              if (hasIcon) SizedBox(height: 8),
              Icon(
                Icons.arrow_forward_sharp,
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget لعرض معلومات الدورة
class CourseCard extends StatelessWidget {
  final String title;
  final String completionDate;
   // الرابط الاختياري للصورة

  const CourseCard({
    required this.title,
    required this.completionDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Completed: $completionDate',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
                TextButton(onPressed: (){
                  print('Pressed!');
                  navigateTo(context, Certifications());
                }, child: Text('View Certification', style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),)),
            ],
          ),
          Icon(
            Icons.check_circle_outline_rounded,
            color: Colors.green.shade700,
          ),
        ],
      ),
    );
  }
}

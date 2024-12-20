import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Text("Notifications", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: [
              Tab(
                icon: Icon(Icons.school),
                text: "Courses",
              ),
              Tab(
                icon: Icon(Icons.admin_panel_settings),
                text: "Administration",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CoursesNotifications(),
            AdministrationNotifications(),
          ],
        ),
      ),
    );
  }
}

class CoursesNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        NotificationTile(
          title: "Mobile Application",
          description: "Don't forget !",
          status: "reminder",
        ),
        NotificationTile(
          title: "Graphic Desgin",
          description: "task submitted successfully!",
          status: "completed",
        ),
        NotificationTile(
          title: "programing",
          description: "Task submitted successfully!",
          status: "completed",
        ),
        NotificationTile(
          title: "English",
          description: "Don't forget  !",
          status: "reminder",
        ),
      ],
    );
  }
}

class AdministrationNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        NotificationTile(
          title: "Exam Schedule",
          description: "Check the updated exam timetable.",
          status: "reminder",
        ),
        NotificationTile(
          title: "Fee Submission",
          description: "Payment completed successfully!",
          status: "completed",
        ),
      ],
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String description;
  final String status;

  NotificationTile({
    required this.title,
    required this.description,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    if (status == "reminder") {
      backgroundColor = Colors.yellow.shade100;
    } else if (status == "completed") {
      backgroundColor = Colors.green.shade100;
    } else {
      backgroundColor = Colors.white;
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.5),
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(Icons.notifications, color: Colors.blue),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }
}

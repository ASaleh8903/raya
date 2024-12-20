import 'package:flutter/material.dart';

import '../Home/course details.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text(
          "Carts",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Total: 500 EGP",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/home/mobile_application.jpeg'),
                  radius: 25,
                ),
                title: Text("Mobile Application course"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("4.2 ★ (19 ratings)"),
                    Text("Updated Recently"),
                    Text("500 EGP"),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              String inputText = "";
                              return AlertDialog(
                                title: Text("Enter Code"),
                                content: TextField(
                                  onChanged: (value) {
                                    inputText = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Type Code here",
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      print("User Comment: $inputText");
                                    },
                                    child: Text("OK", style: TextStyle(
                                      color: Colors.black
                                    ),),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text("Add Code", style: TextStyle(
                          color: Colors.green.shade900
                        ),),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseDetails()));
                },
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red,),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Remove Course"),
                          content: Text("Do You Want to Remove This Course?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("No", style: TextStyle(
                                color: Colors.black
                              ),),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Yes", style: TextStyle(
                                color: Colors.red
                              ),),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raya/Settings/profile.dart';
import 'package:raya/login/loginPage.dart';

import '../Shared/components.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ThemeMode _themeMode = ThemeMode.system; // Default theme mode

  void _setTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsPage(
          onThemeChanged: _setTheme), // Passing the theme change callback
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode:
          _themeMode, // Using the _themeMode variable to control the theme
    );
  }
}

class SettingsPage extends StatefulWidget {
  final Function(ThemeMode) onThemeChanged;

  SettingsPage({required this.onThemeChanged});
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        backgroundColor: Color(0xFF006400), // Dark Green (matching logo color)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Dark Mode Switch
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(Icons.nightlight_round),
                title: Text('Dark Mode'),
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                    //Change theme based on the switch value
                    widget.onThemeChanged(
                        isDarkMode ? ThemeMode.dark : ThemeMode.light);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(Icons.language),
                title: Text('Change Language'),
                onTap: () {
                  // Navigate to About Us page (You can replace this with your own page later)
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Coming Soon!'),
                        content: Text('This feature will be available soon'),
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
                },
              ),
            ),
            SizedBox(height: 20),
            // About Us Option
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('About Us'),
                onTap: () {
                  // Navigate to About Us page (You can replace this with your own page later)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AboutUsPage()), // Replace with your About Us page
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // Profile Option
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  // Navigate to Profile page (You can replace this with your own page later)
                  navigateTo(context, UserProfile());
                },
              ),
            ),
            SizedBox(height: 20),

            // Logout Option
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Logout"),
                        content: Text("Are you sure you want to logout?"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              navigateAndFinish(context, Login());
                              // Add your logout logic here
                            },
                            child: Text("Yes", style: TextStyle(color: Colors.red),),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("No", style: TextStyle(color: Colors.black),),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder About Us Page
class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Us")),
      body: Center(child: Text("This is the About Us page")),
    );
  }
}


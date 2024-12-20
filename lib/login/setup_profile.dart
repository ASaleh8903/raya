import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raya/Shared/app_brain.dart';
import '../Shared/components.dart';
import '../Layout/layout.dart';

class SetupProfile extends StatefulWidget {
  @override
  _SetupProfileState createState() => _SetupProfileState();
}

class _SetupProfileState extends State<SetupProfile> {
  String? selectedProgram;
  String? selectedLevel;

  final List<String> programs = [
    'نظم و معلومات الاعمال',
    'اقتصاديات التجارة الخارجية',
    'محاسبه ومراجعة',
    'خريج او خارج المعهد',
  ];

  final List<String> levels = [
    'الأول',
    'الثاني',
    'الثالث',
    'الرابع',
    'خريج او خارج المعهد',
  ];

  var formKey = GlobalKey<FormState>();
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Form(
        key: formKey,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/raya/login_background.jpg'), // صورة الخلفية
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // الشعار
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/raya/logo.jpg'),
                      radius: 80,
                    ),
                    const SizedBox(height: 20),
                    // النصوص الرئيسية
                    const Text(
                      'RAYA',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'HIGH',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'INSTITUTE',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60),
                    // عنوان التسجيل
                    Text(
                      "Let's complete your account profile",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 30),
                    //  اسم المستخدم
                    TextFormField(
                      controller: controller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username must not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Username',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // اختيار البرنامج
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Program',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      value: selectedProgram,
                      items: programs.map((program) {
                        return DropdownMenuItem(
                          value: program,
                          child: Text(program),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedProgram = value;
                          AppBrain.program = value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    // اختيار المستوى
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Level',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      value: selectedLevel,
                      items: levels.map((level) {
                        return DropdownMenuItem(
                          value: level,
                          child: Text(level),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedLevel = value;
                          AppBrain.level = value;
                        });
                      },
                    ),
                    SizedBox(height: 30),
                    // زر التسجيل
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the Home page
                        if(formKey.currentState!.validate()){
                          AppBrain.userName = controller.text;
                          navigateAndFinish(context, Layout());
                        }

                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 122, 190, 124),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

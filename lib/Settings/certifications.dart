import 'package:flutter/material.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text(
            'Certifications',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
          iconTheme: IconThemeData(
            color: Colors.white,
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset('assets/raya/certification.jpg'),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,

                  child: ElevatedButton(
                      onPressed: (){},
                    child: Text(
                      'SAVE AS PDF',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade900
                      ),
                  )
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,

                  child: ElevatedButton(
                      onPressed: (){},
                    child: Text(
                      'SAVE AS PNG',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade900
                      ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

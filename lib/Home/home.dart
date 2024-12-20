import 'package:flutter/material.dart';
import '../Shared/components.dart';
import 'course details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isPopularSelected = false;
  List<Map<String, String>> cards = [
    {
      'title': 'Mobile Application',
      'image': 'assets/home/mobile_application.jpeg',
      'Trainer': 'Ahmed Islam',
      'Rating': '4.9',
      'Price' : '500'
    },
    {
      'title': 'Graphic Design',
      'image': 'assets/home/graphic-design.jpg',
      'Trainer': 'Ahmed Mostafa',
      'Rating': '3.2',
      'Price' : '500'
    },
    {
      'title': 'AI',
      'image': 'assets/home/ai.jpeg',
      'Trainer': 'Abdelrahman Magdy',
      'Rating': '4.5',
      'Price' : '500'
    },
    {
      'title': 'Web developer',
      'image': 'assets/home/web_developer.jpg',
      'Trainer': 'Abelrahman Magdy',
      'Rating': '4.8',
      'Price' : '500'
    },
    {
      'title': 'English',
      'image': 'assets/home/english.jpg',
      'Trainer': 'Sara Abo ELfetoh',
      'Rating': '3.9',
      'Price' : '500'
    },
    {
      'title': 'Programming',
      'image': 'assets/home/programming.jpeg',
      'Trainer': 'Abdelrahman Magdy',
      'Rating': '4.1',
      'Price' : '500'
    },
    {
      'title': 'Digital Marketing',
      'image': 'assets/home/digital_marketing.jpg',
      'Trainer': 'Osama Elbostany',
      'Rating': '4',
      'Price' : '500'
    },
    {
      'title': 'IC3',
      'image': 'assets/home/ic3.jpg',
      'Trainer': 'Fatima Homus',
      'Rating': '3',
      'Price' : '500'
    },
  ];

  void toggleCategory(bool isPopular) {
    setState(() {
      isPopularSelected = isPopular;
      if (isPopularSelected) {
        cards = cards.take(4).toList();
      } else {
        cards = [
          {
            'title': 'Mobile Application',
            'image': 'assets/home/mobile_application.jpeg',
            'Trainer': 'Ahmed Islam',
            'Rating': '4.9',
            'Price' : '500',
            'Time' : '16'
          },
          {
            'title': 'Graphic Design',
            'image': 'assets/home/graphic-design.jpg',
            'Trainer': 'Ahmed Mostafa',
            'Rating': '4.9',
            'Price' : '500',
            'Time' : '16'
          },
          {
            'title': 'AI',
            'image': 'assets/home/ai.jpeg',
            'Trainer': 'Abdelrahman Magdy',
            'Rating': '4.9',
            'Price' : '500',
            'Time' : '16'
          },
          {
            'title': 'Web Developer',
            'image': 'assets/home/web_developer.jpg',
            'Trainer': 'Abelrahman Magdy',
            'Rating': '4.9',
            'Price' : '500',
            'Time' : '16'
          },
          {
            'title': 'English',
            'image': 'assets/home/english.jpg',
            'Trainer': 'Sara Abo ELfetoh',
            'Rating': '4.9',
            'Price' : '500',
            'Time' : '16'
          },
          {
            'title': 'Programming',
            'image': 'assets/home/programming.jpeg',
            'Trainer': 'Abelrahman Magdy',
            'Rating': '4.9',
            'Price' : '500',
            'Time' : '16'
          },
          {
            'title': 'Digital Marketing',
            'image': 'assets/home/digital_marketing.jpg',
            'Trainer': 'Osama Elbostany',
            'Rating': '4.9',
            'Price' : '500',
            'Time' : '16'
          },
          {
            'title': 'IC3',
            'image': 'assets/home/ic3.jpg',
            'Trainer': 'Fatima Homus',
            'Rating': '4.9',
            'Price' : '500',

          },
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text('Home', style: TextStyle(
            color: Colors.white
        ),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/raya/raya.jpg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                              AssetImage('assets/raya/logo.jpg'),
                              radius: 15,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Hello, AhmedMoustafa!',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Welcome To Our App,',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Wish ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    'You ',
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    'best wishes',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade900,
                                child: Icon(Icons.search, color: Colors.white,),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.black,),
                            ),
                            hintText: 'Search...',
                            hintStyle: TextStyle(color: Colors.black),

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => toggleCategory(false),
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: !isPopularSelected
                                  ? Colors.green.shade900
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.green.shade900),
                            ),
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: !isPopularSelected
                                    ? Colors.white
                                    : Colors.green.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () => toggleCategory(true),
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: isPopularSelected
                                  ? Colors.green.shade900
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.green.shade900),
                            ),
                            child: Text(
                              'Popular',
                              style: TextStyle(
                                color:
                                isPopularSelected ? Colors.white : Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(
                    height: 400, // Set a fixed height for the GridView
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 4 / 5,
                      ),
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        bool isHovered = false;
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return MouseRegion(
                              onEnter: (_) => setState(() => isHovered = true),
                              onExit: (_) => setState(() => isHovered = false),
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                transform: isHovered
                                    ? (Matrix4.identity()
                                  ..scale(1.05))
                                    : Matrix4.identity(),
                                child: GestureDetector(
                                  onTap: () {
                                    if(cards[index]['title'] == "Mobile Application"){
                                      navigateTo(context, CourseDetails());
                                    }
                                    else{
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
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    elevation: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                            child: Image.asset(
                                              cards[index]['image']!,
                                              height: 70,
                                              width: 120,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            cards[index]['title']!,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Text(
                                              '${cards[index]['Trainer']}',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              '${cards[index]['Rating']}',
                                              style: TextStyle(
                                                color: Colors.amber.shade900,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../components/card.dart';
class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: SafeArea(
        child: Padding(
          padding:
          const EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Good evening',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 50),
                  Icon(Icons.notifications, color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Icon(Icons.timelapse_outlined, color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Icon(Icons.settings, color: Colors.white, size: 30),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Card(
                    color: Color(0xff1E1E1E),
                    elevation: 30,
                    child: Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      child: Text('Music',
                          style: TextStyle(color: Colors.white60)),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Card(
                    color: Color(0xff1E1E1E),
                    child: Container(
                      height: 30,
                      width: 160,
                      alignment: Alignment.center,
                      child: Text(
                        'Podcasts and Shows',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Card_button(),
                  ),
                  Expanded(
                    child: Card_button(),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Card_button(),
                  ),
                  Expanded(
                    child: Card_button(),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Your Top Mixes',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              SizedBox(height: 30,),
              Expanded(
                child: ListView(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Card(

                      elevation: 4, // Adjust elevation as needed
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150, // Adjust image height as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)), // Rounded top corners
                              image: DecorationImage(
                                image:   AssetImage('images/eminem.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4), // Add some vertical spacing
                                Text(
                                  'Subtitle text goes here',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 4, // Adjust elevation as needed
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150, // Adjust image height as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)), // Rounded top corners
                              image: DecorationImage(
                                image:AssetImage('images/eminem.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4), // Add some vertical spacing
                                Text(
                                  'Subtitle text goes here',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home, color: Colors.white, size: 40),
          Icon(Icons.search, color: Colors.white, size: 40),
          Icon(Icons.library_add_rounded, color: Colors.white, size: 40),
          Icon(Icons.workspace_premium, color: Colors.white, size: 40),
        ],
      ),
    );
  }
}
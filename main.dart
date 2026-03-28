import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 128,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 24, 131, 29),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/doctor_image.png"), 
                      fit: BoxFit.contain)
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr. John Doe", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                      Text("heart specialist", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 90, 85, 85))),
                      Row(
                        children: [
                          Icon(Icons.email, color: const Color.fromARGB(255, 43, 182, 66), size: 30),
                          const SizedBox(width: 20),
                          Icon(Icons.phone, color: const Color.fromARGB(255, 43, 182, 66), size: 30),
                          SizedBox(width: 16),
                          Icon(Icons.video_camera_back, color: const Color.fromARGB(255, 43, 182, 66), size: 30),
                          SizedBox(width: 20),
                          const SizedBox(width: 16)
                        ]
                      )
                    ],

                  )
                ],
              ),
              SizedBox(height: 25),
              Text(
                "About",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Medicine is much more than a prestigious profession; it is a profound humanitarian mission dedicated to preserving the sanctity of life through science and empathy. A physician’s journey begins with years of rigorous study, yet their true education occurs at the bedside, where they translate complex biology into the language of hope.",               
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w200,
                  color: const Color.fromARGB(255, 90, 85, 85),
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.location_on, color: const Color.fromARGB(255, 14, 197, 106), size: 30),
                        SizedBox(width: 16),
                        Column(children: [
                          Text("Address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 90, 85, 85))),
                          Text("123 Main Street", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 90, 85, 85))),
                        ],)
                      ],
                    )
                  ],),
                  SizedBox(width: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image(image: 
                    AssetImage("assets/images/map_image.JPG"),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover)),
                ]
              )
            ],

        ),
      )));
  }
}
import 'package:flutter/material.dart';
import 'package:mantalhealth/pages/exercise_title.dart';
import 'package:mantalhealth/pages/gymskil.dart';
import 'package:mantalhealth/pages/langue.dart';
import 'package:mantalhealth/pages/reading_book.dart';
import 'package:mantalhealth/pages/saving.dart';
import 'package:mantalhealth/pages/writing.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded),
              label: "",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_down_circle_outlined),
            label: "",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Abdi!",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "23 Dec  2022",
                            style: TextStyle(
                                color: Colors.blue[100], fontSize: 13),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            child: Icon(
                              Icons.notification_add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 60,
                    padding: EdgeInsets.only(left: 20, top: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How do You feel?",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "..",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset("lib/images/i1.png"),
                        ),
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset("lib/images/i2.png"),
                        ),
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset("lib/images/i3.png"),
                        ),
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset("lib/images/i4.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Bodly",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Center(
                              child: Text(
                                "Fine",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text(
                                "Well",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Text(
                                "Excellent",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Langues()),
                                );
                              },
                              child: ExerciseTitle(
                                icon: Icons.favorite,
                                exerciseName: "Speaking Skills",
                                numberofexercises: 16,
                                color: Colors.orange,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Reading()),
                                );
                              },
                              child: ExerciseTitle(
                                icon: Icons.person,
                                exerciseName: "Reading Skills",
                                numberofexercises: 8,
                                color: Colors.blue,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Writing()),
                                );
                              },
                              child: ExerciseTitle(
                                icon: Icons.star,
                                exerciseName: "Writing Skills",
                                numberofexercises: 20,
                                color: Colors.pink,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SAVING()),
                                );
                              },
                              child: ExerciseTitle(
                                icon: Icons.monetization_on_outlined,
                                exerciseName: "saving Skills",
                                numberofexercises: 100,
                                color: Colors.green,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GYMINYSkill()),
                                );
                              },
                              child: ExerciseTitle(
                                icon: Icons.sports_gymnastics,
                                exerciseName: "Gmy Skills",
                                numberofexercises: 10,
                                color: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

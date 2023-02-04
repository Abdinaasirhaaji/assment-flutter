import 'package:flutter/material.dart';
import 'package:mantalhealth/data/gym.dart';

class GYMINYSkill extends StatelessWidget {
  const GYMINYSkill({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0,
          title: Text(
            "GYM Skill",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: gym.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Icon(
                      Icons.sports_gymnastics,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: Text(gym[index]),
                  subtitle: Text("on gowig"),
                  trailing: Icon(
                    Icons.person,
                    size: 22,
                    color: Colors.grey,
                  ),
                ),
              );
            })),
      ),
    );
  }
}

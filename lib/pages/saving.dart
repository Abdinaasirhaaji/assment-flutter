import 'package:flutter/material.dart';
import 'package:mantalhealth/data/savingarry.dart';

class SAVING extends StatelessWidget {
  const SAVING({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: Text(
            "Saving Skill",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: Saving.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: Text(Saving[index]),
                  subtitle: Text("on gowig"),
                  trailing: Icon(
                    Icons.person,
                    size: 22,
                    color: Colors.pink,
                  ),
                ),
              );
            })),
      ),
    );
    ;
  }
}

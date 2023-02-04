import 'package:flutter/material.dart';
import 'package:mantalhealth/data/reading.dart';

class Reading extends StatelessWidget {
  const Reading({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Text(
            "Books I Read 2022",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: Bookread.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  title: Text(Bookread[index]),
                  subtitle: Text("ended"),
                  trailing: Icon(
                    Icons.favorite,
                    size: 22,
                    color: Colors.red,
                  ),
                ),
              );
            })),
      ),
    );
  }
}

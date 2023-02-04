import 'package:flutter/material.dart';
import 'package:mantalhealth/data/langua_arry.dart';

class Langues extends StatelessWidget {
  const Langues({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0,
          title: Text(
            "languages",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: language.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  title: Text(language[index]),
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

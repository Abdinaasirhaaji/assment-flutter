import 'package:flutter/material.dart';
import 'package:mantalhealth/data/writing.dart';

class Writing extends StatelessWidget {
  const Writing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          title: Text(
            "Writing",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: wirting.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: Text(wirting[index]),
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
    ;
  }
}

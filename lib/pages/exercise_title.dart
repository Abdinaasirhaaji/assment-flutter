import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int  numberofexercises;
  final color;

  const ExerciseTitle({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberofexercises,
     required this.color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        height: 80,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: Icon(icon,color: Colors.white,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: color,
                    ),
                  ),
                  SizedBox(width: 12,),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(height: 10,),
                      Text(exerciseName,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        numberofexercises.toString() + '  Exercises'
                        ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                    ],
                  ),
                ],
              ) ,
            ),

            Container(
              margin: EdgeInsets.only(right: 12),
              child:   Icon(Icons.more_horiz),
            )

          ],
        ),
      ),
    );
  }
}

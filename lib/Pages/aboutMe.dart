import 'package:flutter/material.dart';

class aboutMe extends StatelessWidget {
  const aboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'This is my photo',
              child: Container(
                height: 500,
                width: 250,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/IMG.jpg")),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orangeAccent,
                          offset: Offset(0, 0),
                          blurRadius: 50,
                          spreadRadius: 50
                      )
                    ]
                ),
              ),
            ),
            const SizedBox(width: 150,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Myself RamaChandraMoorthi",
                  textAlign:TextAlign.center ,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange
                  ),
                ),
                const SizedBox(height:20),
                Text(""" I'm From Dindigul
                I completed My Bachelor Degree in GTN Arts and Science College in Dindigul
                """,
                textAlign:TextAlign.center ,
                  style: TextStyle(
                    color: Colors.lightBlue
                  ),
                )
              ],
            ),
          ],
        )))); }
}

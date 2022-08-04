import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DisCard extends StatelessWidget {
  const DisCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 10,
        child: Column(
          children: [
            Container(
                height: 220,
                width: 250,
                child: Container(

                    //  round radius
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/BackGround.png"),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                        )))),
            Container(
              height: 60,
              width: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "los angeles  ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    // allign the text on the lift
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "owner",
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              //  round radius
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(25.0),
              //     image: DecorationImage(
              //       image: AssetImage("assets/images/BackGround.png"),
              //       fit: BoxFit.scaleDown,
              //       alignment: Alignment.topCenter,
              //     ))
            )
          ],
        ));
  }
}

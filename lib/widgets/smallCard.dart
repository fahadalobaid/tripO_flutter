import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/TripDetails');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Container(
          width: 150,
          height: 80,
          child: Row(
            children: [
              Container(
                  width: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(

                        //  round radius
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/BackGround.png"),
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ))),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "City name",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "name",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

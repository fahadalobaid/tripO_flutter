import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:tripo_app/models/trip.dart';

class SmallCard extends StatefulWidget {
  final Trip trip;
  const SmallCard({Key? key, required this.trip}) : super(key: key);

  @override
  State<SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
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
                            // Image.network( trips.image,fit: BoxFit.fill)
                            // alignment: Alignment.topCenter)
                            image: DecorationImage(
                              image: AssetImage("${widget.trip.image}"),
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
                      "${widget.trip.title}",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "${widget.trip.owner}",
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

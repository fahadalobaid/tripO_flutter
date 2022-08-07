import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tripo_app/models/trip.dart';

import '../providers/trips_providers.dart';

class DisCard extends StatefulWidget {
  final Trip trips;

  const DisCard({Key? key, required this.trips}) : super(key: key);

  @override
  State<DisCard> createState() => _DisCardState();
}

class _DisCardState extends State<DisCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/TripDetails');
      },
      child: Consumer<TripsProvider>(
        builder: (context, TripsProvider, child) =>
            // List<Trips> showtrips,
            Card(
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
                                  image: NetworkImage("${widget.trips.image}"),
                                  // AssetImage("assets/images/BackGround.png"),
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
                            "${widget.trips.title}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            // allign the text on the lift
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "${widget.trips.owner}",
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
                )),
      ),
    );
  }
}

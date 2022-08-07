import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'package:tripo_app/models/trip.dart';
import 'package:tripo_app/providers/auth_provider.dart';
import 'package:tripo_app/providers/trips_providers.dart';

import '../models/trip.dart';
import '../models/trip.dart';

class TripDetails extends StatefulWidget {
  final Trip trip;
  const TripDetails({Key? key, required this.trip}) : super(key: key);

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  get index async => null;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<TripsProvider>(context, listen: false).getTrips(),
        builder: (context, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (dataSnapshot.error != null) {
              return Center(
                child: Text('An error occurred'),
              );
            } else {
              return Consumer<TripsProvider>(
                builder: (context, TripsProvider, child) => Scaffold(
                  appBar: PreferredSize(
                      child: AppBar(
                        flexibleSpace: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  TripsProvider.trips[index].image!),

                              // '${context.read<TripsProvider>().trips!.image}'

                              // AssetImage('assets/images/TripONoMoments.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                        backgroundColor: Colors.white,
                        elevation: 10,
                        actions: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ],
                        leading: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      preferredSize: Size.fromHeight(350)),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${widget.trip.title}"),
                              Text("${widget.trip.owner}"),
                            ],
                          ),
                        ),
                        Text("${widget.trip.description}"),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        });
  }
}

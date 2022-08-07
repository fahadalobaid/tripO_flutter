import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:tripo_app/models/trip.dart';
import 'package:tripo_app/providers/trips_providers.dart';
import 'package:tripo_app/providers/trips_providers.dart';
import 'package:tripo_app/widgets/distenationCard.dart';
import 'package:tripo_app/widgets/smallCard.dart';

import '../providers/auth_provider.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  IconButton(
                    icon: Icon(Icons.logout_outlined),
                    onPressed: () {
                      context.read<UserProvider>().logout();
                      context.push("/");
                    },
                  ),
                ],
              ),
            ),

            //  search bar color

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: FutureBuilder(
                future: Provider.of<TripsProvider>(context, listen: true)
                    .getTrips(),
                builder: ((context, dataSnapshot) {
                  if (dataSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    if (dataSnapshot.error != null) {
                      return const Center(
                        child: Text('An error occurred'),
                      );
                    } else {
                      List<Trip> showtrips =
                          Provider.of<TripsProvider>(context, listen: true)
                              .trips;
                      return Consumer<TripsProvider>(
                        builder: (context, TripsProvider, child) =>
                            ScrollSnapList(
                          itemBuilder: (context, index) {
                            return DisCard(trips: TripsProvider.trips[index]);
                            // trips:  context.watch<TripsProvider>Trips.[index]
                          },
                          itemCount: showtrips.length,
                          //  TripList.length,
                          itemSize: 100,
                          // itemSize,
                          onItemFocus: (index) {}, dynamicItemSize: true,
                        ),
                      );
                    }
                  }
                }),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     DisCard(),
            //     // DisCard(),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Popular Destination ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: GestureDetector(
                          onTap: () {
                            context.push("/AllTrip");
                          },
                          child: Text("view all"))),
                ),
              ],
            ),

            FutureBuilder(
              future:
                  Provider.of<TripsProvider>(context, listen: true).getTrips(),
              builder: (context, dataSnapshot) {
                if (dataSnapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (dataSnapshot.error != null) {
                    return const Center(
                      child: Text('An error occurred'),
                    );
                  } else {
                    return Consumer<TripsProvider>(
                      builder: (context, TripsProvider, child) =>
                          ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics:
                                  const NeverScrollableScrollPhysics(), // <- Here
                              itemCount: 2,
                              itemBuilder: (context, index) =>
                                  SmallCard(trip: TripsProvider.trips[index])),
                    );
                  }
                }
              },
            ),
          ],
        ));
  }
}

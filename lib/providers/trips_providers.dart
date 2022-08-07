import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:tripo_app/models/trip.dart';
import 'package:tripo_app/services/trips_services.dart';

class TripsProvider extends ChangeNotifier {
  List<Trip> trips = [];

  bool check = false;
  Future<void> getTrips() async {
    trips = await TripsServices().getTrips();
  }

  Future<bool?> CreateTrip(String title, String description, File image) async {
    check = await TripsServices()
        .CreateTrip(title: title, description: description, image: image);
    await getTrips();

    notifyListeners();

    return check;
  }

  Future<bool?> UpdateTrip(
      int TripID, String title, String description, File image) async {
    check = await TripsServices().UpdateTrip(
        TripID: TripID, title: title, description: description, image: image);
    await getTrips();
    notifyListeners();

    return check;
  }

  Future<bool?> DeleteTrip(int TripID) async {
    check = await TripsServices().DeleteTrip(TripID: TripID);
    await getTrips();
    notifyListeners();

    return check;
  }
}

import 'dart:core';

class DestinationModel{
  String? destinationName;
  String? imgurl;
  String? description;

  DestinationModel({this.destinationName, this.imgurl, this.description});
}

class TravelModel{
  String? name;
  List<DestinationModel>? destinations;

  TravelModel({this.name, this.destinations});
}


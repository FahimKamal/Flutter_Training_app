import 'dart:core';

class DestinationModel{
  String? destinationName;
  String? imgurl;
  String? description;

  DestinationModel({this.destinationName, this.imgurl, this.description});
}

// class TravelModel{
//   String? name;
//   List<DestinationModel>? destinations;
//
//   TravelModel({this.name, this.destinations});
// }


class TravelModel {
  String? id;
  String? spotName;
  String? imageLink;
  String? description;
  String? travelRegion;
  String? travelSpot;
  String? timeStamp;
  String? submitDate;

  TravelModel(
      {this.id,
      this.spotName,
      this.imageLink,
      this.description,
      this.travelRegion,
      this.travelSpot,
      this.timeStamp,
      this.submitDate});
}

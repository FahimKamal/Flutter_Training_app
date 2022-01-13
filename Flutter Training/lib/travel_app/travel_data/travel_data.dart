import 'package:tt/travel_app/travel_models/travel_model.dart';
import 'dart:core';
List<DestinationModel> getDestinations(){
  List<DestinationModel> list = [];

  DestinationModel destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  destinationModel = DestinationModel();
  destinationModel.destinationName = 'Cox\s Bazer';
  destinationModel.imgurl = '';
  destinationModel.description = 'Cox\s Bazer is a longest sea beach around the world.';
  list.add(destinationModel);

  return list;
}


Map<String, List<DestinationModel>> bdTravelSpots  = {
  'Cox\s Bazer' : [
    DestinationModel(
        destinationName: 'Cox\s Bazer Beach',
        imgurl: 'images/Afgan.png',
        description: 'Cox\s Bazer is a longest sea beach around the world.'
    ),DestinationModel(
        destinationName: 'Sentmartin',
        imgurl: 'images/albania.png',
        description: 'Be fraternal. Dominas sunt hilotaes de barbatus index.'
    ),DestinationModel(
      destinationName: 'Assimilatios ire!',
      imgurl: 'images/algeria.png',
      description: 'Cotta, exsul, et boreas.Lunas ridetis, tanquam fidelis palus.'
    ),
  ],
  'Cummilah': [
    DestinationModel(
        destinationName: "Plasmators",
        imgurl: 'images/andorra.png',
        description: 'The lord has zen, but not everyone yearns it.The scholar absorbs.'
    ),DestinationModel(
        destinationName: 'Assimilatios ire!',
        imgurl: 'images/algeria.png',
        description: 'Cotta, exsul, et boreas.Lunas ridetis, tanquam fidelis palus.'
    ),
  ],
  'Khulna' : [
    DestinationModel(
        destinationName: 'Cox\s Bazer Beach',
        imgurl: 'images/Afgan.png',
        description: 'Cox\s Bazer is a longest sea beach around the world.'
    ),DestinationModel(
        destinationName: 'Sentmartin',
        imgurl: 'images/albania.png',
        description: 'Be fraternal. Dominas sunt hilotaes de barbatus index.'
    ),DestinationModel(
        destinationName: 'Assimilatios ire!',
        imgurl: 'images/algeria.png',
        description: 'Cotta, exsul, et boreas.Lunas ridetis, tanquam fidelis palus.'
    ),
  ],
};

Map<String, List<DestinationModel>> worldTravelSpots  = {
  'USA' : [
    DestinationModel(
        destinationName: 'Cox\s Bazer Beach',
        imgurl: 'images/Afgan.png',
        description: 'Cox\s Bazer is a longest sea beach around the world.'
    ),DestinationModel(
        destinationName: 'Sentmartin',
        imgurl: 'images/albania.png',
        description: 'Be fraternal. Dominas sunt hilotaes de barbatus index.'
    ),DestinationModel(
        destinationName: 'Assimilatios ire!',
        imgurl: 'images/algeria.png',
        description: 'Cotta, exsul, et boreas.Lunas ridetis, tanquam fidelis palus.'
    ),
  ],
  'Canada': [
    DestinationModel(
        destinationName: "Plasmators",
        imgurl: 'images/andorra.png',
        description: 'The lord has zen, but not everyone yearns it.The scholar absorbs.'
    ),DestinationModel(
        destinationName: 'Assimilatios ire!',
        imgurl: 'images/algeria.png',
        description: 'Cotta, exsul, et boreas.Lunas ridetis, tanquam fidelis palus.'
    ),
  ],
  'India' : [
    DestinationModel(
        destinationName: 'Cox\s Bazer Beach',
        imgurl: 'images/Afgan.png',
        description: 'Cox\s Bazer is a longest sea beach around the world.'
    ),DestinationModel(
        destinationName: 'Sentmartin',
        imgurl: 'images/albania.png',
        description: 'Be fraternal. Dominas sunt hilotaes de barbatus index.'
    ),DestinationModel(
        destinationName: 'Assimilatios ire!',
        imgurl: 'images/algeria.png',
        description: 'Cotta, exsul, et boreas.Lunas ridetis, tanquam fidelis palus.'
    ),
  ],
  'Japan' : [
    DestinationModel(
        destinationName: 'Kioto',
        imgurl: 'images/Afgan.png',
        description: 'Kioto is a nice city.'
    ),DestinationModel(
        destinationName: 'Sentmartin',
        imgurl: 'images/albania.png',
        description: 'Be fraternal. Dominas sunt hilotaes de barbatus index.'
    ),DestinationModel(
        destinationName: 'Assimilatios ire!',
        imgurl: 'images/algeria.png',
        description: 'Cotta, exsul, et boreas.Lunas ridetis, tanquam fidelis palus.'
    ),
  ],
};
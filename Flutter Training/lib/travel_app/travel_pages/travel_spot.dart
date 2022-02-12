import 'package:flutter/material.dart';
import 'package:tt/travel_app/travel_models/travel_model.dart';
import 'package:tt/travel_app/travel_pages/details_page.dart';
import 'package:tt/travel_app/widgets/appbar_design.dart';
import 'package:tt/travel_app/widgets/travel_provider.dart';
import 'package:provider/provider.dart';

class TravelSpot extends StatefulWidget {
  int? index;
  String? region;

  TravelSpot({Key? key, this.index, this.region}) : super(key: key);

  @override
  _TravelSpotState createState() => _TravelSpotState();
}

class _TravelSpotState extends State<TravelSpot> {
  int counter = 0;

  _customInitState(TravelProvider travelProvider){
    setState(() {
      counter++;
    });
    travelProvider.getTravelSpot('${widget.region}');
  }

  @override
  Widget build(BuildContext context) {
    final TravelProvider travelProvider = Provider.of<TravelProvider>(context);
    if(counter == 0){
      _customInitState(travelProvider);
    }
    return Scaffold(
      appBar: AppBarDesign('Travel spot'),
      body: _body(travelProvider),
    );
  }

  Widget _body(TravelProvider travelProvider){
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 300
        ),
        itemCount: travelProvider.travelSpotList.length,
        itemBuilder: (context, index){
          return _CustomContainer(travelProvider.travelSpotList[index]);
        },
      ),
    );
  }

  Widget _CustomContainer(TravelModel data){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(data: data) ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(0,3)
            ),
          ],
        ),
        // padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                '${data.imageLink}',
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 200,
              ),
            ),

            Text('${data.spotName}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('${data.description}'),
          ],
        ),
      ),
    );
  }
}

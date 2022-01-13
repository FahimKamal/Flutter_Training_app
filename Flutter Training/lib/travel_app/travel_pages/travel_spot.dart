import 'package:flutter/material.dart';
import 'package:tt/travel_app/travel_data/travel_data.dart';
import 'package:tt/travel_app/travel_models/travel_model.dart';
import 'package:tt/travel_app/travel_pages/details_page.dart';
import 'package:tt/travel_app/widgets/appbar_design.dart';

class TravelSpot extends StatefulWidget {
  int? index;
  String? region;

  TravelSpot({Key? key, this.index, this.region}) : super(key: key);

  @override
  _TravelSpotState createState() => _TravelSpotState();
}

class _TravelSpotState extends State<TravelSpot> {
  List<DestinationModel>? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.index == 0){
      data = bdTravelSpots[widget.region];
    }else if(widget.index == 1){
      data = worldTravelSpots[widget.region];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign('Travel spot'),
      body: _body(),
    );
  }

  Widget _body(){
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 300
        ),
        itemCount: data?.length,
        itemBuilder: (context, index){
          return _CustomContainer(data![index]);
        },
      ),
    );
  }

  Widget _CustomContainer(DestinationModel data){
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
              child: Image.asset(
                '${data.imgurl}',
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 200,
              ),
            ),

            Text('${data.destinationName}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('${data.description}'),
          ],
        ),
      ),
    );
  }
}

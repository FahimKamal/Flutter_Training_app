import 'package:flutter/material.dart';
import 'package:tt/travel_app/travel_models/travel_model.dart';
import 'package:tt/travel_app/widgets/appbar_design.dart';

class DetailsPage extends StatefulWidget {
  TravelModel? data;
  DetailsPage({Key? key, this.data}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign("Details"),
      body: _body(),
    );
  }

  Widget _body(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            '${widget.data?.imageLink}',
            fit: BoxFit.fitHeight,
            width: double.maxFinite,
            height: 200,
          ),

          Text('${widget.data?.spotName}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text('${widget.data?.description}'),
        ],
      ),
    );
  }
}

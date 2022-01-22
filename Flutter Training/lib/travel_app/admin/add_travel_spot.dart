import 'package:flutter/material.dart';
import 'package:tt/travel_app/widgets/form_decoration.dart';
import 'package:tt/travel_app/widgets/static-variables.dart';

class AddTravelSpot extends StatefulWidget {
  const AddTravelSpot({Key? key}) : super(key: key);

  @override
  _AddTravelSpotState createState() => _AddTravelSpotState();
}

class _AddTravelSpotState extends State<AddTravelSpot> {
  String? selectTravelRegion;
  String? selectTravelSpot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Travel Spot"),
        centerTitle: true,
      ),
      body: bodyUI(),
    );
  }

  Widget bodyUI() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          ClipRRect(
            child: Image.asset(
              "images/Icons/gallery.png",
              width: size.width * 0.3,
              height: size.height * 0.3,
              color: Colors.pinkAccent,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    size: 40,
                    color: Colors.pinkAccent,
                  )),
              SizedBox(
                width: size.width * 0.08,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.pinkAccent,
                  ))
            ],
          ),
          Divider(
            height: 50,
          ),
          TextField(
            decoration: FormDecoration.copyWith(
              label: Text("Spot Name"),
            ),
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
          dropdownMenu(
              value: selectTravelRegion,
              size: size,
              label: "Select Region",
              items: dropdownMenuGenerator(StaticVariables.TravelRegion, size),
              onChanged: (newValue) {
                setState(() {
                  selectTravelSpot = null;
                  selectTravelRegion = newValue as String;
                });
              }),
          SizedBox(
            height: size.width * 0.04,
          ),
          dropdownMenu(
            value: selectTravelSpot,
            size: size,
            label: "Select Travel Spot",
            items: travelSpotSelector(selectTravelRegion, size),
            onChanged: (newValue) {
              setState(() {
                selectTravelSpot = null;
                selectTravelSpot = newValue as String;
              });
            },
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
          TextField(
            maxLines: 5,
            decoration: FormDecoration.copyWith(
              label: Text("Description"),
            ),
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
        ],
      ),
    );
  }

  Container dropdownMenu(
      {required Size size,
      required String label,
      required String? value,
      required List<DropdownMenuItem<String>>? items,
      required ValueChanged onChanged}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.greenAccent.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(3)),
        border: Border.all(color: Colors.black, width: 3),
      ),
      width: size.width,
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
        value: value,
        hint: Container(
          width: size.width * 0.75,
          child: Text(
            label,
            style: TextStyle(fontSize: size.height * 0.023),
          ),
        ),
        items: items,
        onChanged: onChanged,
      )),
    );
  }

  List<DropdownMenuItem<String>>? travelSpotSelector(
      String? region, Size size) {
    if (region == null) {
      return null;
    } else if (region == 'Travel Bangladesh') {
      return dropdownMenuGenerator(StaticVariables.bdDistrict, size);
    } else if (region == 'Travel World') {
      return dropdownMenuGenerator(StaticVariables.allCountries, size);
    }
    return null;
  }

  List<DropdownMenuItem<String>> dropdownMenuGenerator(
      List<String> list, Size size) {
    return list.map((selectTravelSpot) {
      return DropdownMenuItem(
        child: Container(
          width: size.width * 0.75,
          child: Text(
            selectTravelSpot,
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
        ),
        value: selectTravelSpot,
      );
    }).toList();
  }
}

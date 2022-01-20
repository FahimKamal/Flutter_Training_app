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
      body: _bodyUI(),
    );
  }

  Widget _bodyUI() {
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.greenAccent.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(3)),
              border: Border.all(color: Colors.black, width: 3),
            ),
            width: size.width,
            child: DropdownButtonHideUnderline(
                child: DropdownButton(
              value: selectTravelRegion,
              hint: Container(
                width: size.width * 0.75,
                child: Text(
                  "Select Region",
                  style: TextStyle(fontSize: size.height * 0.023),
                ),
              ),
              items: StaticVariables.TravelRegion.map((selectTravelRegion) {
                return DropdownMenuItem(
                  child: Container(
                    width: size.width * 0.75,
                    child: Text(
                      selectTravelRegion,
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
                  value: selectTravelRegion,
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectTravelSpot = null;
                  selectTravelRegion = newValue as String;
                });
              },
            )),
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.greenAccent.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(3)),
              border: Border.all(color: Colors.black, width: 3),
            ),
            width: size.width,
            child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: selectTravelSpot,
                  hint: Container(
                    width: size.width * 0.75,
                    child: Text(
                      "Select Travel Spot",
                      style: TextStyle(fontSize: size.height * 0.023),
                    ),
                  ),
                  items: selectTravelRegion == null
                      ? null
                      : selectTravelRegion == 'Travel Bangladesh'
                          ? StaticVariables.bdDistrict.map((selectTravelSpot) {
                              return DropdownMenuItem(
                                child: Container(
                                  width: size.width * 0.75,
                                  child: Text(
                                    selectTravelSpot,
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 16),
                                  ),
                                ),
                                value: selectTravelSpot,
                              );
                            }).toList()
                          : selectTravelRegion == 'Travel World'
                              ? StaticVariables.allCountries.map((selectTravelSpot) {
                                  return DropdownMenuItem(
                                    child: Container(
                                      width: size.width * 0.75,
                                      child: Text(
                                        selectTravelSpot,
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 16),
                                      ),
                                    ),
                                    value: selectTravelSpot,
                                  );
                                }).toList()
                              : null,
                  onChanged: (newValue) {
                    setState(() {
                      selectTravelSpot = null;
                      selectTravelSpot = newValue as String;
                    });
                  },
              )
            ),
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
}

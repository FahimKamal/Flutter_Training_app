import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GoogleMapClass extends StatefulWidget {
  const GoogleMapClass({Key? key}) : super(key: key);

  @override
  _GoogleMapClassState createState() => _GoogleMapClassState();
}

class _GoogleMapClassState extends State<GoogleMapClass> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('0'),
        position: LatLng(24.8198198, 89.3701066),
        infoWindow: InfoWindow(title: "Bogura", snippet: "This is snippet.")
      )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google map"),
        centerTitle: true,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(target: LatLng(24.8198198, 89.3701066), zoom: 15)
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const maps());
}


class maps extends StatefulWidget {
  const maps({Key? key}) : super(key: key);


  @override
  State<maps> createState() => _mapsState();

}

class _mapsState extends State<maps> {
  final LatLng _location = const LatLng(30.0272, 31.4917);
  late GoogleMapController mapController;
  void _myMaCreated (GoogleMapController controller){
    mapController = controller;
  }

  final CameraPosition gizaPyramids = CameraPosition(target: LatLng(29.980088,31.132545),zoom: 14);
  Future<void> gotGizaPyramids()async{
    final GoogleMapController controller = await mapController;
    controller.animateCamera(CameraUpdate.newCameraPosition(gizaPyramids));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text('Our Branch'),
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body:
        GoogleMap(
          mapType: MapType.hybrid,
          onMapCreated:_myMaCreated ,
          initialCameraPosition: CameraPosition(
              target: _location ,bearing: 45.0,tilt: 10 , zoom: 16.5),

          markers: {
            Branch
          },
        ),


        // floatingActionButton: FloatingActionButton.extended(onPressed: getCurrentLocation, label: Icon(Icons.gps_fixed)),
      ),
    );
  }
}


Marker Branch = Marker(
    markerId: MarkerId("Stomache"),
    position: const LatLng(30.0272, 31.4917),
    infoWindow: InfoWindow(title: "This is Our Branch"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose));
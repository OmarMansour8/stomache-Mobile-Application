import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stomache/addToCart.dart';
import 'package:stomache/mainMenu.dart';
import 'package:stomache/offers.dart';




class maps extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  double totalAmount = 0;
  List<String> orders=[];
  maps(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart,
        required this.totalAmount,required this.orders});

 
  @override
  State<maps> createState() => _mapsState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders);

}

class _mapsState extends State<maps> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  double totalAmount = 0;
  List<String> orders=[];


  _mapsState({required this.Email,
  required this.Password,
  required this.fullName,
  required this.mobileNumber,
  required this.gender,
  required this.dateOfBirth,
  required this.cart,
  required this.totalAmount
    ,required this.orders});
  var _index = 2;
  final LatLng _location = const LatLng(30.0272, 31.4917);
  late GoogleMapController mapController;
  void _myMaCreated (GoogleMapController controller){
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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



        bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home),),
              BottomNavigationBarItem(label: "Offers", icon: Icon(Icons.local_offer),),
              BottomNavigationBarItem(label: "Restaurant", icon: Icon(Icons.location_on),),
              BottomNavigationBarItem(label: "Cart", icon: Icon(Icons.shopping_cart),),

            ],

            currentIndex: _index,
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.deepOrange,
            unselectedLabelStyle:TextStyle(fontWeight: FontWeight.bold),
            selectedLabelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold),
            backgroundColor: Colors.white,




            onTap: (index) {
              setState(() {
                _index = index;
                if (_index == 0)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                if (_index == 1)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => offers(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                if (_index == 2)
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => maps(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));

                if (_index == 3)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddToCart(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
              });

            }
        ),

        // floatingActionButton: FloatingActionButton.extended(onPressed: getCurrentLocation, label: Icon(Icons.gps_fixed)),
      ),
    );
  }
}


Marker Branch = Marker(
    markerId: MarkerId("Stomache"),
    position: const LatLng(30.0272, 31.4917),
    infoWindow: InfoWindow(title: "Stomache Restaurant"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose));
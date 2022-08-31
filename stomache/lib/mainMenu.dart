import 'package:flutter/material.dart';
import 'package:stomache/ChocolateLavaCake.dart';
import 'package:stomache/Fire_Burger.dart';
import 'package:stomache/Ground_Beef_Pasta.dart';
import 'package:stomache/Healthy_Taco_Salad.dart';
import 'package:stomache/Jucy_Burger.dart';
import 'package:stomache/MyAccount.dart';
import 'package:stomache/PastaCategory.dart';
import 'package:stomache/PizzaCategory.dart';
import 'package:stomache/SaladCategory.dart';
import 'package:stomache/Settings.dart';
import 'package:stomache/Tuna_Salad.dart';
import 'package:stomache/Vegan_Breakfast.dart';
import 'package:stomache/addToCart.dart';
import 'package:stomache/burgercategory.dart';
import 'package:stomache/map.dart';
import 'package:stomache/offers.dart';
import 'package:stomache/start.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'mainMenu.dart';
import 'breakfast.dart';
import 'pizza_add_to_cart.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// void main() {
//   runApp(homePage());
// }

class homePage extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];

  homePage(
      {required this.Email,
      required this.Password,
      required this.fullName,
      required this.mobileNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.cart});

  @override
  State<homePage> createState() => _homePageState(
      Email: Email,
      Password: Password,
      fullName: fullName,
      mobileNumber: mobileNumber,
      gender: gender,
      dateOfBirth: dateOfBirth,
      cart: cart);
}

class _homePageState extends State<homePage> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];

  _homePageState(
      {required this.Email,
      required this.Password,
      required this.fullName,
      required this.mobileNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.cart}); //  late WebViewController controller;
  var _index = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          elevation: 5,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepOrange,
          title: Text(
            "Restaurant",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 3,
                          color: Colors.deepOrange)
                    ],
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 3,
                          color: Colors.deepOrange)
                    ],
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => start()));
                      },
                      icon: Icon(
                        Icons.logout,
                        size: 20,
                        color: Colors.white,
                      )),
                )
              ],
            )
          ],
        ),
        drawer: Drawer(
          width: 180,
          backgroundColor: Colors.deepOrange,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => homePage(
                                Email: Email,
                                Password: Password,
                                fullName: fullName,
                                mobileNumber: mobileNumber,
                                gender: gender,
                                dateOfBirth: dateOfBirth,
                                cart: cart,
                              )));
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text(
                  "Main Menu",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => offers(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                },

                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),

                // leading:Image(image:NetworkImage("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",),
                //   width: 50,),
                title: Text(
                  "Offers",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddToCart(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));

                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text(
                  "My Order",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => myaccount(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text(
                  "My Account",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => setting(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 20),
                // leading:Image(image:NetworkImage("https://www.pngall.com/wp-content/uploads/4/French-Fries-PNG-File.png"),
                //   width: 70,),
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: <Widget>[
              DefaultTabController(
                length: 6,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      unselectedLabelColor: Colors.black54,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepOrange),
                      labelColor: Colors.white,
                      isScrollable: true,
                      tabs: [
                        Row(
                          children: <Widget>[
                            Container(
                              child: Tab(icon: Icon(Icons.restaurant_menu)),
                            ),
                            Container(
                              width: 80,
                              child: Tab(
                                text: "Main Menu",
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Tab(icon: Icon(Icons.breakfast_dining)),
                            ),
                            Container(
                              width: 80,
                              child: Tab(
                                text: "Breakfast",
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Tab(icon: Icon(Icons.lunch_dining_sharp)),
                            ),
                            Container(
                              width: 80,
                              child: Tab(
                                text: "Burger",
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Tab(icon: Icon(Icons.local_pizza)),
                            ),
                            Container(
                              width: 80,
                              child: Tab(
                                text: "Pizza",
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Tab(icon: Icon(Icons.ramen_dining)),
                            ),
                            Container(
                              width: 80,
                              child: Tab(
                                text: "Pasta",
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Tab(icon: Icon(Icons.cake)),
                            ),
                            Container(
                              width: 80,
                              child: Tab(
                                text: "Salads",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  child: Text(
                                    " Popular Items",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      height: 2,
                                    ),
                                  ),
                                )
                              ]),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      ///////////////////Healthy Taco Salad/////////////////////
                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 20),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            HealthyTacoSalad(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text("Healthy Taco Salad",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image2.jpeg"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 10),

                                      ///////////////////////Jucy Burger//////////////////

                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 20),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            JucyBurger(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text("Juicy Burger",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image4.jpeg"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      /////////////////////////Cheesy Pizza///////////////

                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 20),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MyHomePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text("Cheesy Pizza",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image6.jpeg"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 10),

                                      //////////////////Vegan Breakfast//////////////
                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 20),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            VeganBreakfast(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text("Vegan Breakfast",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image9.png"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(children: <Widget>[
                                    Container(
                                      child: Text(
                                        " Best Dishes",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          height: 2,
                                        ),
                                      ),
                                    )
                                  ]),
                                  Row(
                                    children: <Widget>[
                                      ////////////////Ground Beef Pasta/////////////
                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            GroundBeefPasta(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text("Ground Beef Pasta",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image8.jpg"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 10),

                                      ////////////Tuna Salad//////////////////
                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            TunaSalad(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text("Tuna Salad",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image3.jpeg"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      //////////////////Fire Burger////////////////////////
                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            FireBurger(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text("Fire Burger",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image5.jpg"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 10),

                                      Container(
                                        width: 180,
                                        height: 190,
                                        padding: EdgeInsets.only(top: 10),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          elevation: 10,
                                          color: Colors.white,
                                          child: Container(
                                            child: ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  left: 20,
                                                  top: 108,
                                                  right: 18),
                                              trailing:
                                                  Icon(Icons.add_shopping_cart),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ChocolateLavaCake(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                                              },
                                              iconColor: Colors.deepOrange,
                                              title: Text(
                                                  "Chocolate Lava Cakes",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/image7.jpg"),
                                                scale: 1,
                                                alignment: AlignmentDirectional
                                                    .topCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  breakfast(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart),
                                ],
                              ),
                            ],
                          ),
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  burger(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart),
                                ],
                              ),
                            ],
                          ),
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  pizza(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart),
                                ],
                              ),
                            ],
                          ),
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  pasta(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart),
                                ],
                              ),
                            ],
                          ),
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  salads(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Offers",
                icon: Icon(Icons.local_offer),
              ),
              BottomNavigationBarItem(
                label: "Restaurant",
                icon: Icon(Icons.location_on),
              ),
              BottomNavigationBarItem(
                label: "Cart",
                icon: Icon(Icons.shopping_cart),
              ),
            ],
            currentIndex: _index,
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.deepOrange,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            selectedLabelStyle:
                TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            backgroundColor: Colors.white,
            onTap: (index) {
              setState(() {
                _index = index;
                if (_index == 0)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => homePage(
                              Email: Email,
                              Password: Password,
                              fullName: fullName,
                              mobileNumber: mobileNumber,
                              gender: gender,
                              dateOfBirth: dateOfBirth,cart: cart)));
                if (_index == 1)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => offers(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                if (_index == 2)
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => maps()));

                if (_index == 3)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddToCart(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
              });
            }),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:stomache/ChocolateLavaCake.dart';
// import 'package:stomache/Fire_Burger.dart';
// import 'package:stomache/Ground_Beef_Pasta.dart';
// import 'package:stomache/Healthy_Taco_Salad.dart';
// import 'package:stomache/Jucy_Burger.dart';
// import 'package:stomache/MyAccount.dart';
// import 'package:stomache/PastaCategory.dart';
// import 'package:stomache/PizzaCategory.dart';
// import 'package:stomache/SaladCategory.dart';
// import 'package:stomache/Tuna_Salad.dart';
// import 'package:stomache/Vegan_Breakfast.dart';
// import 'package:stomache/burgercategory.dart';
// import 'package:stomache/info.dart';
// import 'package:stomache/map.dart';
// import 'package:stomache/offers.dart';
// import 'package:stomache/start.dart';
// //import 'package:webview_flutter/webview_flutter.dart';
// import 'mainMenu.dart';
// import 'breakfast.dart';
// import 'pizza_add_to_cart.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

//
// void main() {
//   runApp(homePage());
// }

// class homePage extends StatefulWidget {
//   String Email='';
//   String Password='';
//   String fullName = '';
//   String mobileNumber = '';
//   String gender='';
//   String dateOfBirth = '';
//
//
//
//
//   homePage({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
//     required this.gender,required this.dateOfBirth});
//
//   @override
//   State<homePage> createState() => _homePageState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth);
// }
//
// class _homePageState extends State<homePage> {
//   String Email='';
//   String Password='';
//   String fullName = '';
//   String mobileNumber = '';
//   String gender='';
//   String dateOfBirth = '';
//
//
//   _homePageState({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
//     required this.gender,required this.dateOfBirth}); //  late WebViewController controller;
//   var _index = 0;
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//
//
//         appBar: AppBar(
//
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30) ,bottomRight:Radius.circular(30) )),
//           elevation: 5,
//           iconTheme:IconThemeData(color: Colors.white),
//           backgroundColor: Colors.deepOrange,
//           title: Text("Restaurant", style: TextStyle(color: Colors.white),),
//
//           actions: [
//             Row(children: [
//               Container(
//                 height: 40,
//                 width: 0,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(boxShadow:
//                 [BoxShadow(blurRadius:7,spreadRadius: 3,color: Colors.deepOrange)],
//                   shape: BoxShape.circle,
//                   color: Colors.deepOrange,
//                 ),
//                 child: Icon(Icons.favorite_border,size: 20,color: Colors.white,),
//               ),
//               SizedBox(width: 10,),
//               Container(
//                 height: 40,
//                 width: 80,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(boxShadow:
//                 [BoxShadow(blurRadius:7,spreadRadius: 3,color: Colors.deepOrange)],
//                   shape: BoxShape.circle,
//                   color: Colors.deepOrange,
//                 ),
//                 child: IconButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>start()));
//                 },icon:Icon(Icons.logout,size: 20,color: Colors.white,)),
//               )
//
//
//
//             ],)
//           ],
//         ),
//
//         drawer: Drawer(
//
//           width: 180,
//           backgroundColor: Colors.deepOrange,
//           child: ListView(
//             children:<Widget> [
//
//               DrawerHeader(
//                 child:Container(
//
//                   decoration:BoxDecoration(image:DecorationImage
//                     (image:AssetImage("images/logo.png"),fit: BoxFit.cover,),
//                       borderRadius:BorderRadius.only(bottomLeft: Radius.circular(50),
//                           topRight: Radius.circular(50))),
//
//
//                 ),
//               ),
//
//               ListTile(
//
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth)));
//                 },
//                 contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
//                 // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
//                 //  width: 70,),
//                 title: Text("Main Menu", style: TextStyle(color: Colors.white),),
//                 trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
//
//               ),
//               ListTile(
//                 onTap: () {
//                   Navigator.pushNamed(context, '');
//                 },
//
//                 contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
//
//                 // leading:Image(image:NetworkImage("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",),
//                 //   width: 50,),
//                 title: Text("Offers", style: TextStyle(color: Colors.white),),
//                 trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
//               ),
//               ListTile(
//
//                 onTap: () {
//                   Navigator.pushNamed(context, '');
//                 },
//                 contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
//                 // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
//                 //  width: 70,),
//                 title: Text("My Order", style: TextStyle(color: Colors.white),),
//                 trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
//
//               ),
//                ListTile(
//
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>myaccount(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth)));
//                 },
//                 contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
//                 // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
//                 //  width: 70,),
//                 title: Text("My Account", style: TextStyle(color: Colors.white),),
//                 trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
//
//               ),
//
//
//               ListTile(
//                 onTap: () {
//                   Navigator.pushNamed(context, '');
//                 },
//                 contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 20),
//                 // leading:Image(image:NetworkImage("https://www.pngall.com/wp-content/uploads/4/French-Fries-PNG-File.png"),
//                 //   width: 70,),
//                 title: Text("Settings", style: TextStyle(color: Colors.white),),
//                 trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
//               ),
//
//             ],
//
//           ),
//         ),
//
//




//         body:
//
//         Padding(
//           padding: const EdgeInsets.all(8),
//           child: Stack(
//             children: <Widget>[
//
//
//
//
//               DefaultTabController(
//                 length: 6,
//                 child: Column(
//                   children: <Widget> [
//
//                     TabBar(
//                       padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                       unselectedLabelColor: Colors.black54,
//                       indicator: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepOrange),
//                       labelColor: Colors.white,
//                       isScrollable: true,
//
//                       tabs: [
//
//
//
//                         Row(children:<Widget> [
//                           Container(child: Tab(icon: Icon(Icons.restaurant_menu)),),
//                           Container(width: 80,
//                             child: Tab(text: "Main Menu",),),],),
//
//                         Row(children:<Widget> [
//                           Container(child: Tab(icon: Icon(Icons.breakfast_dining)),),
//                           Container(width: 80,
//                             child: Tab(text: "Breakfast",),),],),
//
//                         Row(children:<Widget> [
//                           Container(child: Tab(icon: Icon(Icons.lunch_dining_sharp)),),
//                           Container(width: 80,
//                             child: Tab(text: "Burger",),),],),
//
//                         Row(children:<Widget> [
//                           Container(child: Tab(icon: Icon(Icons.local_pizza)),),
//                           Container(width: 80,
//                             child: Tab(text: "Pizza",),),],),
//                         Row(children:<Widget> [
//                           Container(child: Tab(icon: Icon(Icons.ramen_dining)),),
//                           Container(width: 80,
//                             child: Tab(text: "Pasta",),),],),
//
//
//                         Row(children:<Widget> [
//                           Container(child: Tab(icon: Icon(Icons.cake)),),
//                           Container(width: 80,
//                             child: Tab(text: "Salads",),),],),
//
//
//                       ],
//                     ),
//
//
//
//                     Expanded(
//                       child: TabBarView(
//                         children: [
//
//                           ListView(
//                             shrinkWrap: true,
//                             children: <Widget> [
//
//                               Row(children:<Widget> [
//                                 Container(
//
//                                   child: Text(" Popular Items",
//                                     style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold,height: 2,),),
//
//                                 )
//
//                               ]),
//
//
//                               Column(
//                                 children:<Widget> [
//
//                                   Row(children:<Widget> [
//
//                                     ///////////////////Healthy Taco Salad/////////////////////
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 20),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthyTacoSalad()));
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Healthy Taco Salad",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image2.jpeg"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//
//                                     SizedBox(width: 10),
//
//                                     ///////////////////////Jucy Burger//////////////////
//
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 20),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>JucyBurger()));
//
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Jucy Burger",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image4.jpeg"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//
//                                   ],),
//
//
//                                   ElevatedButton(onPressed: (){
//                                     print(Email);
//                                     print(Password);
//                                     print(gender);
//                                     print(dateOfBirth);
//                                     print(fullName);
//                                     print(mobileNumber);
//
//                                   }, child: Text('omaar!!')),
//
//                                   Row(children:<Widget> [
//
//                                     /////////////////////////Cheesy Pizza///////////////
//
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 20),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
//
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Cheesy Pizza",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image6.jpeg"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//
//                                     SizedBox(width: 10),
//
//
//                                     //////////////////Vegan Breakfast//////////////
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 20),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>VeganBreakfast()));
//
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Vegan Breakfast",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image9.png"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//                                   ],),
//
//                                   Row(children:<Widget> [
//                                     Container(
//
//                                       child: Text(" Best Dishes",
//                                         style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold,height: 2,),),
//
//                                     )
//
//                                   ]),
//
//
//                                   Row(children:<Widget> [
//                                     ////////////////Ground Beef Pasta/////////////
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 10),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>GroundBeefPasta()));
//
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Ground Beef Pasta",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image8.jpg"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//
//                                     SizedBox(width: 10),
//
//                                     ////////////Tuna Salad//////////////////
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 10),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>TunaSalad()));
//
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Tuna Salad",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image3.jpeg"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//
//                                   ],),
//
//
//                                   Row(children:<Widget> [
//
//                                     //////////////////Fire Burger////////////////////////
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 10),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>FireBurger()));
//
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Fire Burger",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image5.jpg"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//
//                                     SizedBox(width: 10),
//
//                                     Container(
//                                       width: 180,
//                                       height: 190,
//                                       padding: EdgeInsets.only(top: 10),
//
//                                       child: Card(
//
//                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//                                         elevation: 10,
//                                         color: Colors.white,
//                                         child:Container(
//
//                                           child:
//                                           ListTile(
//
//                                             contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
//                                             trailing: Icon(Icons.add_shopping_cart),
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>ChocolateLavaCake()));
//
//                                             },
//                                             iconColor: Colors.deepOrange,
//
//                                             title: Text("Chocolate Lava Cakes",style: TextStyle(fontSize: 14)),
//
//
//                                           ),
//
//                                           decoration: BoxDecoration(
//
//                                             borderRadius: BorderRadius.all( Radius.circular(25)),
//                                             image: DecorationImage(image: AssetImage("images/image7.jpg"),
//                                               scale: 1,
//                                               alignment: AlignmentDirectional.topCenter,
//                                             ),
//                                           ),
//                                         ),
//
//
//
//                                       ),
//
//                                     ),
//
//                                   ],),
//
//
//                                 ],
//                               ),],),
//
//
//
//
//
//                           ListView(
//                             shrinkWrap: true,
//                             children: <Widget> [
//                               Column(
//                                 children: <Widget> [
//                                   breakfast(),
//                                 ],
//
//                               ),
//                             ],),
//
//
//                           ListView(
//                             shrinkWrap: true,
//                             children: <Widget> [
//                               Column(
//                                 children: <Widget> [
//                                   burger(),
//                                 ],
//
//                               ),
//                             ],),
//
//
//                           ListView(
//                             shrinkWrap: true,
//                             children: <Widget> [
//                               Column(
//                                 children: <Widget> [
//                                   pizza(),
//                                 ],
//
//                               ),
//                             ],),
//
//                           ListView(
//                             shrinkWrap: true,
//                             children: <Widget> [
//                               Column(
//                                 children: <Widget> [
//                                   pasta(),
//                                 ],
//
//                               ),
//                             ],),
//
//                           ListView(
//                             shrinkWrap: true,
//                             children: <Widget> [
//                               Column(
//                                 children: <Widget> [
//                                   salads(),
//                                 ],
//
//                               ),
//                             ],),
//
//
//
//
//
//
//
//
//                         ],
//                       ),
//
//                     ),
//
//
//
//
//
//                   ],
//                 ),
//
//               ),
//
//
//
//
//
//
//             ],),),
//
//
//
//         bottomNavigationBar: BottomNavigationBar(
//
//             type: BottomNavigationBarType.fixed,
//             items: [
//               BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home),),
//               BottomNavigationBarItem(label: "Offers", icon: Icon(Icons.local_offer),),
//               BottomNavigationBarItem(label: "Restaurant", icon: Icon(Icons.location_on),),
//               BottomNavigationBarItem(label: "More", icon: Icon(Icons.more_horiz),),
//
//             ],
//
//             currentIndex: _index,
//             unselectedItemColor: Colors.black54,
//             selectedItemColor: Colors.deepOrange,
//             unselectedLabelStyle:TextStyle(fontWeight: FontWeight.bold),
//             selectedLabelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold),
//             backgroundColor: Colors.white,
//
//
//
//
//             onTap: (index) {
//               setState(() {
//                 _index = index;
//                 if (_index == 0)Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth)));
//                 if (_index == 1) Navigator.push(context, MaterialPageRoute(builder: (context)=>offers(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth)));
//                 if (_index == 2)Navigator.push(context, MaterialPageRoute(builder: (context)=>maps()));
//
//                 if (_index == 3) Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth
//                 )));
//
//
//               });
//
//             }
//         ),
//
//
//       ),
//     );
//   }
// }

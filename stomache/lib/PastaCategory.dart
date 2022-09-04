import 'package:flutter/material.dart';
import 'package:stomache/Ground_Beef_Pasta.dart';
import 'package:stomache/PastaWithChicken.dart';
import 'package:stomache/SpaghettiNoodles.dart';

class pasta extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name = 'Juicy Burger';
  String image = "images/image4.jpeg";
  double totalAmount = 0;
  List<String> orders = [];

  pasta(
      {required this.Email,
      required this.Password,
      required this.fullName,
      required this.mobileNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.cart,
      required this.totalAmount,
      required this.orders});

  @override
  State<pasta> createState() => _pastaState(
      Email: Email,
      Password: Password,
      fullName: fullName,
      mobileNumber: mobileNumber,
      gender: gender,
      dateOfBirth: dateOfBirth,
      cart: cart,
      totalAmount: totalAmount,
      orders: orders);
}

class _pastaState extends State<pasta> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name = 'Juicy Burger';
  String image = "images/image4.jpeg";
  List<String> orders = [];
  double totalAmount = 0;

  _pastaState(
      {required this.Email,
      required this.Password,
      required this.fullName,
      required this.mobileNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.cart,
      required this.totalAmount,
      required this.orders});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 180,
              height: 190,
              padding: EdgeInsets.only(top: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 10,
                color: Colors.white,
                child: Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(left: 20, top: 108, right: 18),
                    trailing: Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroundBeefPasta(
                                  Email: Email,
                                  Password: Password,
                                  fullName: fullName,
                                  mobileNumber: mobileNumber,
                                  gender: gender,
                                  dateOfBirth: dateOfBirth,
                                  cart: cart,
                                  totalAmount: totalAmount,
                                  orders: orders)));
                    },
                    iconColor: Colors.deepOrange,
                    title: Text("Ground Beef Pasta",
                        style: TextStyle(fontSize: 14)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage("images/image8.jpg"),
                      scale: 1,
                      alignment: AlignmentDirectional.topCenter,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),

            /////////spaghetti-pasta-noodles/////////////

            Container(
              width: 180,
              height: 190,
              padding: EdgeInsets.only(top: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 10,
                color: Colors.white,
                child: Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(left: 20, top: 108, right: 18),
                    trailing: Icon(Icons.add_shopping_cart),
                    iconColor: Colors.deepOrange,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SpagettiNoodles(
                                  Email: Email,
                                  Password: Password,
                                  fullName: fullName,
                                  mobileNumber: mobileNumber,
                                  gender: gender,
                                  dateOfBirth: dateOfBirth,
                                  cart: cart,
                                  totalAmount: totalAmount,
                                  orders: orders)));
                    },
                    title: Text("Spaghetti Noodles",
                        style: TextStyle(fontSize: 14)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage("images/pasta1.jpg"),
                      scale: 1,
                      alignment: AlignmentDirectional.topCenter,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 375,
              height: 280,
              padding: EdgeInsets.only(top: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 10,
                color: Colors.white,
                child: Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(left: 20, top: 200, right: 18),
                    trailing: Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PastaWithChicken(
                                  Email: Email,
                                  Password: Password,
                                  fullName: fullName,
                                  mobileNumber: mobileNumber,
                                  gender: gender,
                                  dateOfBirth: dateOfBirth,
                                  cart: cart,
                                  totalAmount: totalAmount,
                                  orders: orders)));
                    },
                    iconColor: Colors.deepOrange,
                    title: Text("Pasta With Chicken",
                        style: TextStyle(fontSize: 17)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage("images/pasta2.png"),
                      scale: 1,
                      alignment: AlignmentDirectional.topCenter,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';


class AddToCart extends StatefulWidget {

  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];

  AddToCart(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});

  @override
  State<AddToCart> createState() => _AddToCartState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart);
}

class _AddToCartState extends State<AddToCart> {

  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];

  _AddToCartState(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
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
              "Basket",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body:  Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children:<Widget>[

              ListView(
                shrinkWrap: true,
                children: <Widget>[



              Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        " Payment Summary",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                      ),
                    )
                  ],
                ),
                for(int i = 0; i<cart.length;i++)
                     cart[i],





              ],
            ),
          ]),
            ],
          )
        )));
  }
}

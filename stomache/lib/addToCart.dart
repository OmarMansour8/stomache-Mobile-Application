import 'package:flutter/material.dart';
import 'package:stomache/mainMenu.dart';
import 'package:stomache/map.dart';
import 'package:stomache/offers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stomache/mainMenu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '';

class AddToCart extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  double totalAmount = 0;
  List<String> orders = [];
//constructor
  AddToCart(
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
  State<AddToCart> createState() => _AddToCartState(
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

class _AddToCartState extends State<AddToCart> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  double totalAmount = 0;
  List<String> orders = [];
//constructor
  _AddToCartState(
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
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(

          //AppBar
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            elevation: 5,
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.deepOrange,
            leading: IconButton(
                onPressed: () {
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
                              totalAmount: totalAmount,
                              orders: orders)));
                },
                icon: Icon(Icons.arrow_back_ios)),
            title: Text(
              "Cart",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Container(
                //clear cart icon
                child: IconButton(
                    onPressed: () {
                      cart.clear();
                      orders.clear();
                      totalAmount = 0;
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => AddToCart(
                                  Email: Email,
                                  Password: Password,
                                  fullName: fullName,
                                  mobileNumber: mobileNumber,
                                  gender: gender,
                                  dateOfBirth: dateOfBirth,
                                  cart: cart,
                                  totalAmount: totalAmount,
                                  orders: orders)),
                              (Route<dynamic> route) => false);
                    },
                    icon: Icon(Icons.remove_shopping_cart)),
              )
            ],
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: <Widget>[
                ListView(shrinkWrap: true, children: <Widget>[
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
                      //display ordered item
                      for (int i = 0; i < cart.length; i++) cart[i],
                    ],
                  ),
                ]),
              ],
            ),
          ),
          //total amount & proceed tp checkout button
          bottomNavigationBar: (Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30, top: 8),
                height: 40,
                child: Text("Total Amount: ${totalAmount}\$",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      //adding order to fire base
                      FirebaseFirestore.instance.collection('orders').add({
                        'Full Name': '$fullName',
                        'Email': '$Email',
                        'Mobile Number': '$mobileNumber',
                        'totalAmount': '$totalAmount',
                        for (int i = 0; i < orders.length; i++)
                          'item ${i + 1} X quantity': '${orders[i]}',
                      });

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
                                  totalAmount: totalAmount,
                                  orders: orders)));

                      cart.clear();
                      orders.clear();
                      totalAmount = 0;
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                    child: Text(
                      "Proceed to Checkout",
                    )),
              )
            ],
          )),
        ));
  }
}

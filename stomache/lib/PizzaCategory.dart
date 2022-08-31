import 'package:flutter/material.dart';
import 'package:stomache/BuffaloChickenPizza.dart';
import 'package:stomache/SpicyChickenRanchPizza.dart';
import 'package:stomache/VeggiPizza.dart';
import 'package:stomache/pizza_add_to_cart.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class pizza extends StatefulWidget {

  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];

  pizza(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});

  @override
  State<pizza> createState() => _pizzaState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart);
}

class _pizzaState extends State<pizza> {

//  late WebViewController controller;
  var _index = 0;
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];

  _pizzaState(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   Column(children:<Widget> [

      Row(children:<Widget> [
        Container(
          width: 375,
          height: 280,
          padding: EdgeInsets.only(top: 20),

          child: Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child:Container(

              child:
              ListTile(

                contentPadding: EdgeInsets.only(left: 20,top: 200,right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VeggiPizza(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                },
                iconColor: Colors.deepOrange,

                title: Text("Veggi Pizza",style: TextStyle(fontSize: 17)),


              ),


              decoration: BoxDecoration(


                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/pizza1.jpg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

      ],),

      Row(children:<Widget> [
        Container(
          width: 375,
          height: 280,
          padding: EdgeInsets.only(top: 20),

          child: Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child:Container(

              child:
              ListTile(

                contentPadding: EdgeInsets.only(left: 20,top: 200,right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BuffaloChickenPizza(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                },
                iconColor: Colors.deepOrange,

                title: Text("Buffalo Chicken Pizza",style: TextStyle(fontSize: 17)),


              ),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/pizza2.jpg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

      ],),




      Row(children:<Widget> [
        ///////////Cheesy Burger/////////////

        Container(
          width: 180,
          height: 190,
          padding: EdgeInsets.only(top: 20),

          child: Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child:Container(

              child:
              ListTile(

                contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SpicyChickenRanchPizza(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                },
                iconColor: Colors.deepOrange,

                title: Text("Spicy Chicken Ranch Pizza",style: TextStyle(fontSize: 14)),


              ),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/pizza3.jpg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

        SizedBox(width: 10),


        ///////////////Cheesy Pizza///////////////
        Container(
          width: 180,
          height: 190,
          padding: EdgeInsets.only(top: 20),

          child: Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child:Container(

              child:
              ListTile(

                contentPadding: EdgeInsets.only(left: 20,top: 108,right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                },
                iconColor: Colors.deepOrange,

                title: Text(" Cheesy Pizza",style: TextStyle(fontSize: 14)),


              ),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.all( Radius.circular(25)),
                image: DecorationImage(image: AssetImage("images/image6.jpeg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),



          ),

        ),

      ],),


    ],);

  }
}
import 'package:flutter/material.dart';
import 'package:stomache/BegalWithCreamCheese.dart';
import 'package:stomache/CreamyEggs.dart';
import 'package:stomache/FrenchToast.dart';
import 'package:stomache/FruityPancake.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class breakfast extends StatefulWidget {

  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";

  breakfast(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});

  @override
  State<breakfast> createState() => _breakfastState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart);
}

class _breakfastState extends State<breakfast> {

//  late WebViewController controller;
  var _index = 0;
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";

  _breakfastState(
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
    return




      Column(children:<Widget> [

        Row(children:<Widget> [

          ///////////Vegan-Breakfast/////////////

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
                  onTap: (){},
                  iconColor: Colors.deepOrange,

                  title: Text("Vegan Breakfast",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/image9.png"),
                    scale: 1,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                ),
              ),



            ),

          ),

          SizedBox(width: 10),


          ///////////////Fruits Pancake///////////////
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FruityPancake(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("Fruity Pancake",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/breakfast3.png"),
                    scale: 1,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                ),
              ),



            ),

          ),

        ],),





        Row(children:<Widget>[
          Container(
            width: 370,
            height: 250,
            padding: EdgeInsets.only(top: 20),

            child: Card(

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              elevation: 10,
              color: Colors.white,
              child:Container(

                child:
                ListTile(

                  contentPadding: EdgeInsets.only(left: 20,top: 174,right: 18),
                  trailing: Icon(Icons.add_shopping_cart),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FrenchToast(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("French Toasts",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/breakfast2.jpg"),
                    scale: 1,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                ),
              ),



            ),

          ),
        ],),









        Row(children:<Widget> [

          ///////////Bagel with Cream Cheese/////////////

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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BegalWithCreamCheese(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("Bagel with Cream Cheese",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/breakfast4.jpg"),
                    scale: 1,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                ),
              ),



            ),

          ),

          SizedBox(width: 10),


          ///////////////Creamy Eggs///////////////
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreamyEggs(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
                  },
                  iconColor: Colors.deepOrange,

                  title: Text("Creamy Eggs",style: TextStyle(fontSize: 14)),


                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all( Radius.circular(25)),
                  image: DecorationImage(image: AssetImage("images/breakfast5.png"),
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
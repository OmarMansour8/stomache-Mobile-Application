import 'package:flutter/material.dart';
import 'package:stomache/MyAccount.dart';
import 'package:stomache/Settings.dart';
import 'package:stomache/addToCart.dart';
import 'package:stomache/mainMenu.dart';
import 'package:stomache/map.dart';
import 'package:stomache/offerBeefPasta.dart';
import 'package:stomache/offerBuffaloPizza.dart';
import 'package:stomache/offerChocolateLavaCake.dart';
import 'package:stomache/offerFruityPaneCake.dart';
import 'package:stomache/offerVeganbreakfast.dart';
import 'package:stomache/start.dart';
import 'breakfast.dart';



class offers extends StatefulWidget {

  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";
  double totalAmount = 0;
  List<String> orders=[];

  offers(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart,required this.totalAmount,required this.orders});
  @override
  State<offers> createState() => _offersState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders);
}

class _offersState extends State<offers> {
  String Email='';
  String Password='';
  String fullName = '';
  String mobileNumber = '';
  String gender='';
  String dateOfBirth = '';
  List<Widget> cart=[];
  double totalAmount = 0;
  List<String> orders=[];

  _offersState({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
    required this.gender,required this.dateOfBirth,required this.cart,required this.totalAmount,required this.orders}); //  late WebViewController controller;
  var _index = 1;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        appBar: AppBar(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30) ,bottomRight:Radius.circular(30) )),
          elevation: 5,
          iconTheme:IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepOrange,
          title: Text("Stomache", style: TextStyle(color: Colors.white),),

          actions: [
            Row(children: [
              Container(
                height: 40,
                width: 0,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow:
                [BoxShadow(blurRadius:7,spreadRadius: 3,color: Colors.deepOrange)],
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                ),
                ),
              SizedBox(width: 10,),
              Container(
                height: 40,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow:
                [BoxShadow(blurRadius:7,spreadRadius: 3,color: Colors.deepOrange)],
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => start ()));
                    },
                    icon: Icon(
                      Icons.logout,
                      size: 20,
                      color: Colors.white,
                    )),
              )



            ],)
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
                          builder: (context) => homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
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
                          builder: (context) => offers(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
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
                              AddToCart(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));

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
                          builder: (context) => myaccount(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
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
                          builder: (context) => setting(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
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

        body:

        Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: <Widget>[


              ListView(
                shrinkWrap: true,
                children: <Widget> [
                  Column(children:<Widget> [





                    Row(children:<Widget> [

                      Container(
                        child: Text("  Special Offers",
                          style: TextStyle(height: 2,fontSize: 24,fontWeight: FontWeight.bold),),
                      )

                    ],),
                    Row(children:<Widget> [
                      SizedBox(width: 10,),
                      Container(
                        width: 370,
                        height: 170,
                        padding: EdgeInsets.only(top: 10,left: 5),

                        child: Card(

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          elevation: 10,
                          color: Colors.white,


                          child:Row(children: <Widget>[
                            ClipRRect(
                              borderRadius:BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                              child:
                                  GestureDetector(
                              child:Image(image: AssetImage("images/fireburgersale.png"),), onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>offerVeganBreakfast(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                  },)

                            ),
                            Column(
                              children: <Widget>[

                                Container(
                                  margin: EdgeInsets.only(top: 8,left: 8),
                                  child:  Text("Fire Burger",style: TextStyle(fontSize: 18,
                                    fontWeight: FontWeight.bold,height: 1.2,)),

                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8,left: 12),
                                  child:  Text("\n     BUY 2\nGET 1 FREE",style: TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                                ),


                                InkWell(

                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>offerVeganBreakfast(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                    },

                                    child: Row(children: <Widget> [
                                      Container(
                                        margin: EdgeInsets.only(top: 32,left: 10,right: 27),
                                        child:  Text("33% Off",style: TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.bold,height: 1.2,),
                                        ),
                                      ),
                                      Container(

                                        margin: EdgeInsets.only(top: 28,left: 0,right: 0),
                                        child: Icon(Icons.add_shopping_cart,size: 28,color: Colors.deepOrange),

                                      ),
                                    ],)

                                ),


                              ],)
                          ],),




                        ),

                      ),
                    ],),

                    Row(children:<Widget> [
                      SizedBox(width: 10,),
                      Container(
                        width: 370,
                        height: 170,
                        padding: EdgeInsets.only(top: 10,left: 5),

                        child: Card(

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          elevation: 10,
                          color: Colors.white,


                          child:Row(children: <Widget>[
                            ClipRRect(
                              borderRadius:BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                              child:GestureDetector(
                              child :Image(image: AssetImage("images/pastasale.png"),), onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>offerBeefPasta(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                              },)

                            ),
                            Column(
                              children: <Widget>[

                                Container(
                                  margin: EdgeInsets.only(top: 8,left: 0),
                                  child:  Text("Beef Pasta",style: TextStyle(fontSize: 18,
                                    fontWeight: FontWeight.bold,height: 1.2,)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20,left: 0),
                                  child:  Text("THE OFFER\n  FOR ALL\n    SIZES",style: TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                                ),


                                InkWell(

                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>offerBeefPasta(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                    },

                                    child: Row(children: <Widget> [
                                      Container(
                                        margin: EdgeInsets.only(top: 20,left: 10,right: 27),
                                        child:  Text("15% Off",style: TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.bold,height: 1.2,),
                                        ),
                                      ),
                                      Container(

                                        margin: EdgeInsets.only(top: 14,left: 0,right: 5),
                                        child: Icon(Icons.add_shopping_cart,size: 28,color: Colors.deepOrange),

                                      ),
                                    ],)

                                ),


                              ],)
                          ],),




                        ),

                      ),
                    ],),

                    Row(children: <Widget> [

                      SizedBox(width: 10,),
                      Column(children:<Widget> [
                        Container(
                          width: 185,
                          height: 240,
                          padding: EdgeInsets.only(top: 10,left: 5),

                          child: Card(

                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            elevation: 10,
                            color: Colors.white,


                            child:Column(children: <Widget>[
                              ClipRRect(
                                borderRadius:BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                child:
                                    GestureDetector(
                                child :Image(image: AssetImage("images/breakfastsale.png"),), onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>offerFruityPanCake(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                    },)

                              ),
                              Column(
                                children: <Widget>[

                                  Container(
                                    margin: EdgeInsets.only(top: 8,left: 0,right: 25),
                                    child:  Text("Fruity Pancake",style: TextStyle(fontSize:18,
                                      fontWeight: FontWeight.bold,)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5,left: 0),
                                    child:  Text("35\$ INSTEAD OF 40\$",style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                                  ),


                                  InkWell(

                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>offerFruityPanCake(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                      },

                                      child: Row(children: <Widget> [
                                        Container(
                                          margin: EdgeInsets.only(top: 30,left: 15,right: 27),
                                          child:  Text("40% Off",style: TextStyle(fontSize: 14,
                                            fontWeight: FontWeight.bold,height: 1.2,),
                                          ),
                                        ),
                                        Container(

                                          margin: EdgeInsets.only(top: 24,left: 40,right: 5),
                                          child: Icon(Icons.add_shopping_cart,size: 28,color: Colors.deepOrange),

                                        ),
                                      ],)

                                  ),


                                ],)
                            ],),




                          ),

                        ),
                      ],),


                      Column(children:<Widget> [
                        Container(
                          width: 185,
                          height: 240,
                          padding: EdgeInsets.only(top: 10,left: 5),

                          child: Card(

                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            elevation: 10,
                            color: Colors.white,


                            child:Column(children: <Widget>[
                              ClipRRect(
                                borderRadius:BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                child:GestureDetector(
                                child:Image(image: AssetImage("images/cakesale.png"),), onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>offerChocolateLavaCake(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                },)

                              ),
                              Column(
                                children: <Widget>[

                                  Container(
                                    margin: EdgeInsets.only(top: 8,left: 0,right: 25),
                                    child:  Text("Chocolate Cake",style: TextStyle(fontSize:18,
                                      fontWeight: FontWeight.bold,)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5,left: 0),
                                    child:  Text("25\$ INSTEAD OF 30\$",style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                                  ),


                                  InkWell(

                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>offerChocolateLavaCake(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                      },

                                      child: Row(children: <Widget> [
                                        Container(
                                          margin: EdgeInsets.only(top: 30,left: 15,right: 27),
                                          child:  Text("25% Off",style: TextStyle(fontSize: 14,
                                            fontWeight: FontWeight.bold,height: 1.2,),
                                          ),
                                        ),
                                        Container(

                                          margin: EdgeInsets.only(top: 24,left: 40,right: 5),
                                          child: Icon(Icons.add_shopping_cart,size: 28,color: Colors.deepOrange),

                                        ),
                                      ],)

                                  ),


                                ],)
                            ],),




                          ),

                        ),











                      ],),
                    ],),

                    Row(children:<Widget> [
                      SizedBox(width: 10,),
                      Container(
                        width: 370,
                        height: 170,
                        padding: EdgeInsets.only(top: 10,left: 5),

                        child: Card(

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          elevation: 10,
                          color: Colors.white,


                          child:Row(children: <Widget>[
                            ClipRRect(
                              borderRadius:BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                              child:
                                  GestureDetector(
                              child:Image(image: AssetImage("images/pizzasale.png"),), onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>offerBuffaloPizza(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                  },)

                            ),
                            Column(
                              children: <Widget>[

                                Container(
                                  margin: EdgeInsets.only(top: 8,left: 0),
                                  child:  Text("Buffalo Pizza",style: TextStyle(fontSize:18,
                                    fontWeight: FontWeight.bold,)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 30,left: 0),
                                  child:  Text("     BUY 3\nGET 1 FREE",style: TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                                ),


                                InkWell(

                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>offerBuffaloPizza(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));
                                    },

                                    child: Row(children: <Widget> [
                                      Container(
                                        margin: EdgeInsets.only(top: 30,left: 10,right: 27),
                                        child:  Text("25% Off",style: TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.bold,height: 1.2,),
                                        ),
                                      ),
                                      Container(

                                        margin: EdgeInsets.only(top: 25,left: 0,right: 5),
                                        child: Icon(Icons.add_shopping_cart,size: 28,color: Colors.deepOrange),

                                      ),
                                    ],)

                                ),


                              ],)
                          ],),




                        ),

                      ),
                    ],),














                  ],),
                ],),],),),



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


      ),
    );
  }
}
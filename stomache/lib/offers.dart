import 'package:flutter/material.dart';
import 'package:stomache/mainMenu.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'breakfast.dart';
import 'burgercategory.dart';




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

  offers(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});
  @override
  State<offers> createState() => _offersState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart);
}

class _offersState extends State<offers> {
  String Email='';
  String Password='';
  String fullName = '';
  String mobileNumber = '';
  String gender='';
  String dateOfBirth = '';
  List<Widget> cart=[];

  _offersState({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
    required this.gender,required this.dateOfBirth,required this.cart}); //  late WebViewController controller;
  var _index = 1;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(


        appBar: AppBar(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30) ,bottomRight:Radius.circular(30) )),
          elevation: 5,
          iconTheme:IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepOrange,
          title: Text("Restaurant", style: TextStyle(color: Colors.white),),

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
                child: Icon(Icons.favorite_border,size: 20,color: Colors.white,),
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
                child: Icon(Icons.logout,size: 20,color: Colors.white,),
              )



            ],)
          ],
        ),

        drawer: Drawer(

          width: 180,
          backgroundColor: Colors.deepOrange,
          child: ListView(
            children:<Widget> [

              DrawerHeader(
                child:Container(

                  decoration:BoxDecoration(image:DecorationImage
                    (image:AssetImage("images/logo.png"),fit: BoxFit.cover,),
                      borderRadius:BorderRadius.only(bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),


                ),
              ),

              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '0');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text("Main Menu", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),

              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },

                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),

                // leading:Image(image:NetworkImage("https://www.seekpng.com/png/full/148-1483373_cheese-pizza-cheese-pizza-top-view-png.png",),
                //   width: 50,),
                title: Text("Offers", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
              ),
              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text("My Order", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),

              ),
              ListTile(

                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                // leading:Image(image:NetworkImage("https://www.pngitem.com/pimgs/m/248-2486809_transparent-vegetable-pizza-png-png-download.png"),
                //  width: 70,),
                title: Text("Favorites", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),

              ),

              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                contentPadding: EdgeInsets.fromLTRB(15, 0, 20, 20),
                // leading:Image(image:NetworkImage("https://www.pngall.com/wp-content/uploads/4/French-Fries-PNG-File.png"),
                //   width: 70,),
                title: Text("Settings", style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color:Colors.white),
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
                              Image(image: AssetImage("images/fireburgersale.png"),),

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

                                    onTap: (){},

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
                              Image(image: AssetImage("images/pastasale.png"),),

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

                                    onTap: (){},

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
                                Image(image: AssetImage("images/breakfastsale.png"),),

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
                                    child:  Text("54\$ INSTEAD OF 90\$",style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                                  ),


                                  InkWell(

                                      onTap: (){},

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
                                child:
                                Image(image: AssetImage("images/cakesale.png"),),

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
                                    child:  Text("60\$ INSTEAD OF 80\$",style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                                  ),


                                  InkWell(

                                      onTap: (){},

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
                              Image(image: AssetImage("images/pizzasale.png"),),

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

                                    onTap: (){},

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
              BottomNavigationBarItem(label: "More", icon: Icon(Icons.more_horiz),),

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
                if (_index == 0) Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth,cart: cart)));
                if (_index == 1) Navigator.push(context, MaterialPageRoute(builder: (context)=>offers(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));


              });

            }
        ),


      ),
    );
  }
}
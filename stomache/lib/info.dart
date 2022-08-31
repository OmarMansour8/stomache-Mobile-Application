import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stomache/start.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'mainMenu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'breakfast.dart';
import 'pizza_add_to_cart.dart';
import 'Healthy_Taco_Salad.dart';
// void main() async{
//
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform
//   );
//   runApp(MaterialApp(
//       home:MyAccount()));
// }

class MyInfo extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";

 MyInfo(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});
  @override
  State<MyInfo> createState() => _MyInfoState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart);
}


class _MyInfoState extends State<MyInfo> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";

  _MyInfoState(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});

  void getData(){
    // FirebaseFirestore.instance
    //     .collection('Users')
    //     .doc(Email)
    //     .get()
    //     .then((value) {
    //
    //   fullName = value.get('Full Name');
    //   mobileNumber = value.get('Mobile Number');
    //   gender=value.get('Gender');
    //   dateOfBirth = value.get('Date Of Birth');
      print(fullName);
      print(mobileNumber);
      print(gender);
      print(dateOfBirth);
    // });
  }
  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(

                width: 400,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight:Radius.circular(60)),color: Colors.deepOrange,),
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.chevron_left,size: 35,color: Colors.white,))
                      ],
                    ),
                    Row(
                        children:[
                          SizedBox(width: 125,),
                          Container(
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/user.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(100)),
                            height: 115,
                          ),
                        ]
                    ),

                    Row(children:<Widget> [
                      Container(
                        padding: EdgeInsets.only(left: 115,top: 0),
                        child: Text("Account info",style: TextStyle(color: Colors.white,fontSize:24,),),
                      )

                    ],)


                  ],
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: <Widget> [
                  SizedBox(width: 20,),
                  Text('Full Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 70,),
                ],
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 20,),
                Container(
                  child: Text('$fullName',style: TextStyle(fontSize: 18,color: Colors.black54)),
                  // child: Text('${fullName}',style: TextStyle(fontSize: 18,)),


                )
              ],),
              Divider(
                color:Colors.black26,
                indent: 20,
                endIndent: 20,
                height: 25,
                thickness: 1,
              ),




              SizedBox(height: 5,),
              Row(
                children: <Widget> [
                  SizedBox(width: 20,),
                  Text('Email',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 70,),
                ],
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 20,),
                Container(
                  child: Text('$Email',style: TextStyle(fontSize: 18,color: Colors.black54)),
                  //Text('${Email}',style: TextStyle(fontSize: 18,)),


                )
              ],),
              Divider(
                color:Colors.black26,
                indent: 20,
                endIndent: 20,
                height: 25,
                thickness: 1,
              ),



              SizedBox(height: 5,),
              Row(
                children: <Widget> [
                  SizedBox(width: 20,),
                  Text('Date Of Birth',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 70,),
                ],
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 20,),
                Container(
                  child: Text('$dateOfBirth',style: TextStyle(fontSize: 18,color: Colors.black54)),
                  //Text('${dateOfBirth}',style: TextStyle(fontSize: 18,)),


                )
              ],),
              Divider(
                color:Colors.black26,
                indent: 20,
                endIndent: 20,
                height: 25,
                thickness: 1,
              ),


              SizedBox(height: 5,),
              Row(
                children: <Widget> [
                  SizedBox(width: 20,),
                  Text('Mobile Number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 70,),
                ],
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 20,),
                Container(
                  child: Text('$mobileNumber',style: TextStyle(fontSize: 18,color: Colors.black54)),
                  //Text('${mobileNumber}',style: TextStyle(fontSize: 18,)),


                )
              ],),
              Divider(
                color:Colors.black26,
                indent: 20,
                endIndent: 20,
                height: 25,
                thickness: 1,
              ),


              SizedBox(height: 5,),
              Row(
                children: <Widget> [
                  SizedBox(width: 20,),
                  Text('$gender',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 70,),
                ],
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 20,),
                Container(
                  child: Text('Male',style: TextStyle(fontSize: 18,color: Colors.black54)),
                  //Text('${gender}',style: TextStyle(fontSize: 18,)),


                )
              ],),
              Divider(
                color:Colors.black26,
                indent: 20,
                endIndent: 20,
                height: 25,
                thickness: 1,
              ),


            ],
          ),
        ),
      ),


    );
  }
}
// import 'package:flutter/material.dart';
// /*import 'package:stomache/start.dart';
// //import 'package:webview_flutter/webview_flutter.dart';
// import 'mainMenu.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
//
// import 'breakfast.dart';
// import 'pizza_add_to_cart.dart';
// import 'Healthy_Taco_Salad.dart'*/
// // void main() async{
// //
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //       options: DefaultFirebaseOptions.currentPlatform
// //   );
// //   runApp(MaterialApp(
// //       home:myaccount()));
// // }
//
// class myaccount extends StatefulWidget {
//   String Email='';
//   String Password='';
//   String fullName = '';
//   String mobileNumber = '';
//   String gender='';
//   String dateOfBirth = '';
//
//
//   /* myaccount({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
//     required this.gender,required this.dateOfBirth});
// */
//   @override
//   State<myaccount> createState() => _myaccountState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth);
// }
//
// class _myaccountState extends State<myaccount> {
//   String Email='';
//   String Password='';
//   String fullName = '';
//   String mobileNumber = '';
//   String gender='';
//   String dateOfBirth = '';
//
//
//   _myaccountState({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
//     required this.gender,required this.dateOfBirth});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//       ),
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//
//                 width: 400,
//                 height: 200,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight:Radius.circular(60)),color: Colors.deepOrange,),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 5,),
//                     Row(
//                       children: [
//                         SizedBox(width: 10,),
//                         IconButton(onPressed: (){
//                           Navigator.pop(context);
//                         }, icon: Icon(Icons.chevron_left,size: 35,color: Colors.white,))
//                       ],
//                     ),
//                     Row(
//                         children:[
//                           SizedBox(width: 125,),
//                           Container(
//                             width: 115,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage("images/user.png"),
//                                   fit: BoxFit.cover,
//                                 ),
//                                 borderRadius: BorderRadius.circular(100)),
//                             height: 115,
//                           ),
//                         ]
//                     ),
//
//                     Row(children:<Widget> [
//                       Container(
//                         padding: EdgeInsets.only(left: 132,top: 0),
//                         child: Text("Account info",style: TextStyle(color: Colors.white,fontSize:24,),),
//                       )
//
//                     ],)
//
//
//                   ],
//                 ),
//               ),
//               SizedBox(height: 40,),
//               Row(
//                 children: <Widget> [
//                   SizedBox(width: 20,),
//                   Text('Full Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                   SizedBox(width: 70,),
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Row(children: [
//                 SizedBox(width: 20,),
//                 Container(
//                   child: Text('Ziad Emad',style: TextStyle(fontSize: 18,color: Colors.black54)),
//                   //Text('${fullName}',style: TextStyle(fontSize: 18,)),
//
//
//                 )
//               ],),
//               Divider(
//                 color:Colors.black26,
//                 indent: 20,
//                 endIndent: 20,
//                 height: 25,
//                 thickness: 1,
//               ),
//
//
//
//
//               SizedBox(height: 5,),
//               Row(
//                 children: <Widget> [
//                   SizedBox(width: 20,),
//                   Text('Email',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                   SizedBox(width: 70,),
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Row(children: [
//                 SizedBox(width: 20,),
//                 Container(
//                   child: Text('ziademad@gmail.com',style: TextStyle(fontSize: 18,color: Colors.black54)),
//                   //Text('${Email}',style: TextStyle(fontSize: 18,)),
//
//
//                 )
//               ],),
//               Divider(
//                 color:Colors.black26,
//                 indent: 20,
//                 endIndent: 20,
//                 height: 25,
//                 thickness: 1,
//               ),
//
//
//
//               SizedBox(height: 5,),
//               Row(
//                 children: <Widget> [
//                   SizedBox(width: 20,),
//                   Text('Date Of Birth',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                   SizedBox(width: 70,),
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Row(children: [
//                 SizedBox(width: 20,),
//                 Container(
//                   child: Text('02/08/2023',style: TextStyle(fontSize: 18,color: Colors.black54)),
//                   //Text('${dateOfBirth}',style: TextStyle(fontSize: 18,)),
//
//
//                 )
//               ],),
//               Divider(
//                 color:Colors.black26,
//                 indent: 20,
//                 endIndent: 20,
//                 height: 25,
//                 thickness: 1,
//               ),
//
//
//               SizedBox(height: 5,),
//               Row(
//                 children: <Widget> [
//                   SizedBox(width: 20,),
//                   Text('Mobile Number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                   SizedBox(width: 70,),
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Row(children: [
//                 SizedBox(width: 20,),
//                 Container(
//                   child: Text('01100001545',style: TextStyle(fontSize: 18,color: Colors.black54)),
//                   //Text('${mobileNumber}',style: TextStyle(fontSize: 18,)),
//
//
//                 )
//               ],),
//               Divider(
//                 color:Colors.black26,
//                 indent: 20,
//                 endIndent: 20,
//                 height: 25,
//                 thickness: 1,
//               ),
//
//
//               SizedBox(height: 5,),
//               Row(
//                 children: <Widget> [
//                   SizedBox(width: 20,),
//                   Text('Gender',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                   SizedBox(width: 70,),
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Row(children: [
//                 SizedBox(width: 20,),
//                 Container(
//                   child: Text('Male',style: TextStyle(fontSize: 18,color: Colors.black54)),
//                   //Text('${gender}',style: TextStyle(fontSize: 18,)),
//
//
//                 )
//               ],),
//               Divider(
//                 color:Colors.black26,
//                 indent: 20,
//                 endIndent: 20,
//                 height: 25,
//                 thickness: 1,
//               ),
//
//
//             ],
//           ),
//         ),
//       ),
//
//
//     );
//   }
// }
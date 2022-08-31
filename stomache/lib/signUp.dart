import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stomache/mainMenu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);
  @override
  State<Sign_Up> createState() => _Sign_UpState();
}
class _Sign_UpState extends State<Sign_Up> {
  String Email='';
  String Password='';
  String fullName = '';
  String mobileNumber = '';
  String gender='';
  String dateOfBirth = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;
  List<Widget> cart=[];
  //final Widget child;
  DateTime date1=DateTime.now();
  Future<Null>selectDate(BuildContext context) async{
    final DateTime? picked=await showDatePicker(
      context: context, initialDate: date1, firstDate: DateTime(1960), lastDate: DateTime(2030),);
    if(picked!=null && picked!= date1){
      setState((){
        date1=picked;
        print(date1.toString());});}}
  @override
  Widget build(BuildContext context) {
    dateOfBirth='${date1.year} - ${date1.month} - ${date1.day}'.toString();
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
            body:
            Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: <Widget>[
                    IconButton(onPressed: (){Navigator.pushNamed(context, '1');}, icon:Icon(Icons.arrow_back_ios),alignment: Alignment.topLeft,),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 38),
                        )),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Full Name',
                            prefixIcon:Icon(Icons.account_circle_rounded)
                        ),
                        onChanged: (String value){
                          fullName = value;
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon:Icon(Icons.alternate_email_outlined)
                        ),
                        onChanged: (String value){
                          Email = value;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            prefixIcon:Icon(Icons.phone)
                        ),
                        onChanged: (String value){
                          mobileNumber = value;
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'New Password',
                            prefixIcon:Icon(Icons.password)
                        ),
                        onChanged: (String value){
                          Password = value;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6,
                              offset: Offset(0,2),
                            ),]),
                      padding: EdgeInsets.all(1),
                      child:Row(
                        children: [
                          Text('  Date of Birth:  ',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 15)),
                          IconButton(onPressed: (){selectDate(context);}, icon: Icon(Icons.date_range,color: Colors.deepOrange,)),
                          Text(('${date1.year} - ${date1.month} - ${date1.day}').toString(),style: TextStyle(color: Colors.black87),)
                        ],
                      ),

                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Select your Gender:",style: TextStyle(color: Colors.deepOrange,fontSize: 16,fontWeight: FontWeight.bold)),
                        RadioButtonGroup(activeColor: Colors.deepOrange,
                          labels:<String>["Male","Female"],
                          onSelected: (String selected) {


                              setState(() {
                                gender = selected;
                              });}
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: size.width*0.9,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                              color: Colors.deepOrange,
                              onPressed: ()async{
                                try{
                                  final newUser = await _auth.createUserWithEmailAndPassword(email: Email, password: Password);
                                  if(newUser != null){
                                    print('Account has been successfuly created');
                                    FirebaseFirestore.instance.collection('Users').doc('$Email').set( {
                                      'Full Name':'$fullName',
                                      'Email':'$Email',
                                      'Mobile Number':'$mobileNumber',
                                      'Password':'$Password',
                                      'Date Of Birth':'$dateOfBirth',
                                      'Gender':'$gender',
                                    });
                                    print(Email);
                                    print(Password);
                                    print(gender);
                                    print(dateOfBirth);
                                    print(fullName);
                                    print(mobileNumber);

                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth,cart: cart)));



                                  }

                                }
                                catch(e){
                                  print(e);
                                }
                              }, child:Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 19),)),)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '0');
                      },
                      child: const Text('Already have an account?',style: TextStyle(color: Colors.deepOrange,fontSize: 16)),
                    ),
                  ],
                ))
        )


    );




  }





}

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:grouped_buttons/grouped_buttons.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:stomache/mainMenu.dart';
//
// class Sign_Up extends StatefulWidget {
//
//
//   const Sign_Up({Key? key}) : super(key: key);
//   @override
//   State<Sign_Up> createState() => _Sign_UpState();
// }
// class _Sign_UpState extends State<Sign_Up> {
//   String Email='';
//   String Password='';
//   String fullName = '';
//   String mobileNumber = '';
//   String gender='';
//   String dateOfBirth = '';
//
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   DateTime date1=DateTime.now();
//   Future<Null>selectDate(BuildContext context) async{
//     final DateTime? picked=await showDatePicker(
//       context: context, initialDate: date1, firstDate: DateTime(1960), lastDate: DateTime(2030),);
//     if(picked!=null && picked!= date1){
//       setState((){
//         date1=picked;
//         print(date1.toString());});}}
//   @override
//   Widget build(BuildContext context) {
//     dateOfBirth = '${date1.year} - ${date1.month} - ${date1.day}'.toString();
//     Size size = MediaQuery.of(context).size;
//     return MaterialApp(
//         home: Scaffold(
//             body:
//             Padding(
//                 padding: EdgeInsets.all(20),
//                 child: ListView(
//                   children: <Widget>[
//                     IconButton(onPressed: (){Navigator.pushNamed(context, '1');}, icon:Icon(Icons.arrow_back_ios),alignment: Alignment.topLeft,),
//                     Container(
//                         alignment: Alignment.center,
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           'Sign Up',
//                           style: TextStyle(
//                               color: Colors.deepOrange,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 38),
//                         )),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.black26,
//                                 blurRadius: 6,
//                                 offset: Offset(0,2)
//                             ),]),
//                       padding: EdgeInsets.all(1),
//                       child: TextField(
//                         decoration: InputDecoration(
//                             hintText: 'Full Name',
//                             prefixIcon:Icon(Icons.account_circle_rounded)
//                         ),
//                         onChanged: (String value){
//                           fullName = value;
//                         },
//                       ),
//                     ),
//
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.black26,
//                                 blurRadius: 6,
//                                 offset: Offset(0,2)
//                             ),]),
//                       padding: EdgeInsets.all(1),
//                       child: TextField(
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             hintText: 'Email',
//                             prefixIcon:Icon(Icons.alternate_email_outlined)
//                         ),
//                         onChanged: (String value){
//                           Email = value;
//                         },
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.black26,
//                                 blurRadius: 6,
//                                 offset: Offset(0,2)
//                             ),]),
//                       padding: EdgeInsets.all(1),
//                       child: TextField(
//                         decoration: InputDecoration(
//                             hintText: 'Mobile Number',
//                             prefixIcon:Icon(Icons.phone)
//                         ),
//                         onChanged: (String value){
//                           mobileNumber = value;
//                         },
//                       ),
//                     ),
//
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.black26,
//                                 blurRadius: 6,
//                                 offset: Offset(0,2)
//                             ),]),
//                       padding: EdgeInsets.all(1),
//                       child: TextField(
//                         decoration: InputDecoration(
//                             hintText: 'New Password',
//                             prefixIcon:Icon(Icons.password)
//                         ),
//                         obscureText: true,
//                         onChanged: (String value){
//                           Password = value;
//                         },
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black26,
//                               blurRadius: 6,
//                               offset: Offset(0,2),
//                             ),]),
//                       padding: EdgeInsets.all(1),
//                       child:Row(
//                         children: [
//                           Text('  Date of Birth:  ',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 15)),
//                           IconButton(onPressed: (){selectDate(context);
//                             setState(() {
//                               dateOfBirth = '${date1.year} - ${date1.month} - ${date1.day}'.toString();
//                             });}, icon: Icon(Icons.date_range,color: Colors.deepOrange,)),
//                           Text(('${date1.year} - ${date1.month} - ${date1.day}').toString(),style: TextStyle(color: Colors.black87),)
//                         ],
//                       ),
//
//                     ),
//
//
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text("Select your Gender:",style: TextStyle(color: Colors.deepOrange,fontSize: 16,fontWeight: FontWeight.bold)),
//                         RadioButtonGroup(activeColor: Colors.deepOrange,
//                           labels:<String>["Male","Female"],
//                           onSelected: (String selected){
//                               print(selected);
//
//                               setState(() {
//                                 gender = selected;
//                               });
//                           }
//
//                         )
//                       ],
//                     ),
//                     Container(
//                         margin: EdgeInsets.symmetric(vertical: 12),
//                         width: size.width*0.9,
//                         child:ClipRRect(
//                           borderRadius: BorderRadius.circular(29),
//                           child: FlatButton(
//                               padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
//                               color: Colors.deepOrange,
//                               onPressed: ()async{
//                                 try{
//                                   final newUser = await _auth.createUserWithEmailAndPassword(email: Email, password: Password);
//                                   if(newUser != null){
//                                     print('Account has been successfuly created');
//                                     FirebaseFirestore.instance.collection('Users').doc('$Email').set( {
//                                     'Full Name':'$fullName',
//                                     'Email':'$Email',
//                                     'Mobile Number':'$mobileNumber',
//                                     'Password':'$Password',
//                                     'Date Of Birth':'$dateOfBirth',
//                                     'Gender':'$gender',
//                                   });
//                                     // add(
//                                     //     {
//                                     //       'Full Name':'$fullName',
//                                     //       'Email':'$Email',
//                                     //       'Mobile Number':'$mobileNumber',
//                                     //       'Password':'$Password',
//                                     //       'Date Of Birth':'$dateOfBirth',
//                                     //       'Gender':'$gender',
//                                     //     });
//                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth)));
//
//
//
//                                   }
//
//                                 }
//                                 catch(e){
//                                   print(e);
//                                 }
//                               }, child:Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 19),)),)),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '0');
//                       },
//                       child: const Text('Already have an account?',style: TextStyle(color: Colors.deepOrange,fontSize: 16)),
//                     ),
//                   ],
//                 ))
//         )
//
//
//     );
//
//
//
//
//   }
//
//
//
//
//
// }

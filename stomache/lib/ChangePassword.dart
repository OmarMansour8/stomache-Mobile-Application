import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stomache/Settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:stomache/start.dart';
class Change_Password extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  double totalAmount = 0;
  List<String> orders=[];





  Change_Password({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
    required this.gender,required this.dateOfBirth,required this.cart,required this.totalAmount,required this.orders});
  @override
  State<Change_Password> createState() => _Change_PasswordState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, totalAmount: totalAmount, orders: orders);
}
class _Change_PasswordState extends State<Change_Password> {
  String Email='';
  String Password='';
  String fullName = '';
  String mobileNumber = '';
  String gender='';
  String dateOfBirth = '';
  String newPassword='';
  String currentPassword='';
  String confirmPassword='';
  bool buttonEnabled = false;
  enableButton(){
    buttonEnabled = true;
  }

  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";
  double totalAmount = 0;
  List<String> orders=[];

final currentUser = FirebaseAuth.instance.currentUser;
final newPasswordContoller =TextEditingController();
  _Change_PasswordState({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
    required this.gender,required this.dateOfBirth,required this.totalAmount,required this.orders});
  updateData(val){
    FirebaseFirestore.instance.collection('Users').doc(Email).update({'Password': '$val'});
  }
  changePAssword(newPassword) async{
    try{
      await currentUser!.updatePassword(newPassword);
      FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>start()));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Your Password Has Been Changed , Login Again'),backgroundColor: Colors.black26,));

    }
    catch(error){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$error'),backgroundColor: Colors.black26,));
    }
  }
  void dispose(){
    newPasswordContoller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                    children: <Widget>[
                      IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios),alignment: Alignment.topLeft,),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Change your Password',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      Container(
                        margin: EdgeInsets.all(15),
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
                          obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                              focusColor: Colors.deepOrangeAccent,
                              labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                              hintText: 'Old Password',
                              prefixIcon:Icon(Icons.password,color: Colors.deepOrangeAccent)
                          ),
                          onChanged: (val){
                            setState(() {
                              currentPassword = val;
                            });
                            }

                          ,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
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
                            obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                              focusColor: Colors.deepOrangeAccent,
                              labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                              hintText: 'New Password',
                              prefixIcon:Icon(Icons.password  ,color: Colors.deepOrangeAccent)
                          ),
                            onChanged: (val) {
                              setState(() {
                                newPassword=val;
                              });
                            }
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
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
                            obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                              focusColor: Colors.deepOrangeAccent,
                              labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                              hintText: 'Confirm Password',
                              prefixIcon:Icon(Icons.password,color: Colors.deepOrangeAccent)
                          ),
                          onChanged: (val) {
                           setState(() {
                             confirmPassword = val;
                           });

                            }
                            //old [122341]
                          // new[dfkjs]
                          // confirm[ksdjfh]
                          //[]
                        //
                        ),
                      ),
                      Row(
                          children:[
                            SizedBox(width: 25,),
                            Text((() {
                              if(currentPassword==Password&&newPassword==confirmPassword&&newPassword!=''&&confirmPassword!=''&&newPassword!=currentPassword){
                                enableButton();
                                return "";}
                              else{
                                return "Old password must be correct and\nnew password must match in both fields ";}
                            })()),
                          ]),
                      SizedBox(height: 80,),



                      ElevatedButton(onPressed:buttonEnabled ? (){


                        updateData(newPassword);
                        changePAssword(newPassword);

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>setting(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart, totalAmount: totalAmount, orders: orders)));


                      }:null, child: Text('Save'),style: ElevatedButton.styleFrom(primary: Colors.deepOrange),),
                    ]
                )

            )
        )
    );
  }

}
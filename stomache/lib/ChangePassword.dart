import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stomache/Settings.dart';
class Change_Password extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];





  Change_Password({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
    required this.gender,required this.dateOfBirth,required this.cart});
  @override
  State<Change_Password> createState() => _Change_PasswordState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth);
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
  bool buttonDisabled = false;
  enableButton(){
    buttonDisabled = true;
  }

  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";



  _Change_PasswordState({required this.Email,required this.Password,required this.fullName,required this.mobileNumber,
    required this.gender,required this.dateOfBirth});
  updateData(val){
    FirebaseFirestore.instance.collection('Users').doc(Email).update({'Password': '$val'});
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
                          decoration: InputDecoration(
                              hintText: 'Old Password',
                              prefixIcon:Icon(Icons.password)
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
                          decoration: InputDecoration(
                              hintText: 'New Password',
                              prefixIcon:Icon(Icons.password)
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
                          decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              prefixIcon:Icon(Icons.password)
                          ),
                          onChanged: (val) {
                           setState(() {
                             confirmPassword = val;
                           });

                            }

                        ),
                      ),
                      SizedBox(height: 100,),
                      Text((() {
                      if(currentPassword==Password&&newPassword==confirmPassword){
                        enableButton();
                      return "";}
                        else{
                      return "Old must be correct and and new password must match in both fields ";}
                      })()),


                      ElevatedButton(onPressed:buttonDisabled ? (){


                        updateData(newPassword);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>setting(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));


                      }:null, child: Text('Save')),
                    ]
                )

            )
        )
    );
  }

}
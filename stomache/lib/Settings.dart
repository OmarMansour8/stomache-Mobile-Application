import 'package:flutter/material.dart';
import 'package:stomache/About.dart';
import 'package:stomache/ChangeEmail.dart';
import 'package:stomache/ChangePassword.dart';
import 'package:stomache/mainMenu.dart';
import 'package:stomache/pizza_add_to_cart.dart';
import 'package:stomache/start.dart';

class setting extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";

  setting(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});
  @override
  State<setting> createState() => _settingState(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart);
}

class _settingState extends State<setting> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name ='Juicy Burger';
  String image = "images/image4.jpeg";
  bool swVal = false;
  _settingState(
      {required this.Email,
        required this.Password,
        required this.fullName,
        required this.mobileNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.cart});
  //bool _darkMode=false;
  void _onChange(bool val) {
    setState(() {
      swVal = val;
    });
  }

  ThemeData _liteTheme = ThemeData(
    brightness: Brightness.light,
  );
  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
  );

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: swVal ? _darkTheme : _liteTheme,
        home: Scaffold(
            body: SafeArea(
                child: ListView(padding: EdgeInsets.all(20), children: [
          IconButton(
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
                          dateOfBirth: dateOfBirth,cart: cart)));
            },
            icon: Icon(Icons.arrow_back_ios),
            alignment: Alignment.topLeft,
          ),
          Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(1),
              child: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          SizedBox(height: 30, width: 30),
          ListTile(
            title: Text('Dark mode'),
            subtitle: Text(''),
            leading: Icon(Icons.dark_mode),
            trailing: Switch(
                value: (swVal),
                onChanged: _onChange,
                activeColor: Colors.deepOrange),
          ),
          SizedBox(height: 10, width: 10),
          // ListTile(
          //     title:Text('Change Email'),
          //     subtitle: Text(''),
          //     leading:Icon(Icons.alternate_email),
          //     trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrange,),
          //     onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Change_Email(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth)));}
          // ),
          // SizedBox(height: 10,width: 10),
          ListTile(
              title: Text('Change Password'),
              subtitle: Text(''),
              leading: Icon(Icons.password),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepOrange),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Change_Password(Email: Email, Password: Password, fullName: fullName, mobileNumber: mobileNumber, gender: gender, dateOfBirth: dateOfBirth, cart: cart)));
              }),
          SizedBox(height: 10, width: 10),
          ListTile(
              title: Text('About App'),
              subtitle: Text(''),
              leading: Icon(Icons.info_outline),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepOrange),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => About_app()));
              }),
          SizedBox(height: 10, width: 10),
          ListTile(
              title: Text('Logout'),
              subtitle: Text(''),
              leading: Icon(Icons.logout),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepOrange),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => start()));
              }),
          SizedBox(height: 10, width: 10),
        ]))));
  }
}

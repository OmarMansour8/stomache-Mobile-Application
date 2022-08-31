import 'package:flutter/material.dart';
class Forgot_Password extends StatefulWidget {
  const Forgot_Password({Key? key}) : super(key: key);
  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}
class _Forgot_PasswordState extends State<Forgot_Password> {
  //final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
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
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),

                      ),
                      Text('Enter the Email address associated with your account and we will send you a link to reset your password. ',style:
                      TextStyle(
                        fontSize: 18,
                      ),textAlign: TextAlign.justify,
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
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
                              prefixIcon:Icon(Icons.alternate_email)
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: FlatButton(
                                padding: EdgeInsets.symmetric(vertical: 13,horizontal: 33),
                                color: Colors.deepOrange,
                                onPressed: (){}, child:Text('Continue',style: TextStyle(color: Colors.white,fontSize: 19),)),)),
                    ]
                )
            )
        )
    );
  }
}
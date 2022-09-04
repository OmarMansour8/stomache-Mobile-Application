import 'package:flutter/material.dart';
import 'signUp.dart';
import 'singIn.dart';


class start extends StatelessWidget {
  start({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
            children: <Widget>[

              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 100),

                      child:ClipRRect(
                        borderRadius:BorderRadius.circular(40),
                        child: Image.asset('images/logo.png',height: 340,width: 330,fit: BoxFit.cover,alignment: Alignment.center),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: size.width*0.8,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child:SizedBox(height: 60, child:  ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent),
                              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_In()));}, child:Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 19),)),)),
    ),Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: size.width*0.8,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child:SizedBox(height: 60, child: ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.orange[200],),
                              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_Up()));}, child:Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 19),)),)),

                    )]
              )
            ]
        )

    );
  }
}
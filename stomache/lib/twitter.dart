import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Twitter extends StatefulWidget {
  const Twitter({Key? key}) : super(key: key);
  @override
  State<Twitter> createState() => _TwitterState();
}
class _TwitterState extends State<Twitter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        backgroundColor:Colors.lightBlueAccent,
        title:Text('              Twitter',style:TextStyle(fontSize: 25 ) ),
        leading:IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios)),
      ),
          body:WebView(
            initialUrl: 'https://twitter.com/i/flow/login',javascriptMode: JavascriptMode.unrestricted,
          )
      ),);
  }
}
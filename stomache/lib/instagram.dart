import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);
  @override
  State<Instagram> createState() => _InstagramState();
}
class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        backgroundColor:Colors.redAccent,
        title:Text('            Instagram',style:TextStyle(fontSize: 25 ) ),
        leading:IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios)),
      ),
          body:WebView(
            initialUrl: 'https://www.instagram.com/',javascriptMode: JavascriptMode.unrestricted,
          )
      ),);
  }
}
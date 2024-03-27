import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:doubt/Screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? imageurl;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(future: getData(), builder: (context,snapshot){
          return Center(child: Image.network(imageurl.toString(),height: 200,width: 200,),);
        }),
        );
  }

  Future<String>getData() async {
    var response = await http
        .post(Uri.parse("http://students.wissenerp.com/Login/get_logo"));
    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      imageurl=responseData["logo_url"];
      log(responseData["logo_url"]);
      return imageurl!;
    } else {
      log(response.statusCode.toString());
      return response.statusCode.toString();
    }
  }
}

import 'package:doubt/responsive/webscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Screen"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        Get.offAll(WebScreen());
      }, child: Text("Next Page")),),
    );
  }
}

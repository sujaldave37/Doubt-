import 'package:doubt/responsive/mobilescreen.dart';
import 'package:doubt/responsive/webscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Manager extends StatefulWidget {
  const Manager({super.key});

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context,orientation){
      if(orientation==Orientation.portrait){
        return MobileScreen();
      }
      else{
        return WebScreen();
      }
    });
  }
}

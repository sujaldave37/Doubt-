import 'dart:developer';

import 'package:doubt/responsive/mobilescreen.dart';
import 'package:doubt/responsive/webscreen.dart';
import 'package:flutter/cupertino.dart';

class Manage extends StatefulWidget {
  const Manage({super.key});

  @override
  State<Manage> createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
      double availableWidth = constraints.maxWidth;
      double availableHeight = constraints.maxHeight;
      if(availableWidth>=600){
        return Center(child: Text("Web Screen"),);
      }
      else{
        return Center(child: Text("Mobile Screen"),);
      }
    });
  }
}

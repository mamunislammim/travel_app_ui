

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../Equipment/color_class.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(IconlyLight.notification,color: buttonColor,size: 100,),),
    );
  }
}

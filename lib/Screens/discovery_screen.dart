import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../Equipment/color_class.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({Key? key}) : super(key: key);

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(IconlyLight.discovery,color: buttonColor,size: 100,),),
    );
  }
}

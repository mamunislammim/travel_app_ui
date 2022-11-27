import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_ns/liquid_progress_indicator.dart';
import 'package:travel_app_ui/Screens/routing_page.dart';
import '../Equipment/color_class.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Future<void> _goHomeScreen() async {
    await Future.delayed(const Duration(seconds: 8)).then((value) =>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RoutingPage())));
  }

  @override
  void initState() {
    _goHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: buttonColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "images/tra.png",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 140,
              child: LiquidCircularProgressIndicator(
                value: 0.40, // Defaults to 0.5.
                valueColor: const AlwaysStoppedAnimation(Colors
                    .pink), // Defaults to the current Theme's accentColor.
                backgroundColor: Colors
                    .white, // Defaults to the current Theme's backgroundColor.
                borderColor: buttonColor,
                borderWidth: 5.0,
                direction: Axis
                    .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                center: const Text(
                  "Loading...",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: buttonColor,
                      fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children:   [
// CircleAvatar(
// radius: 80,
// backgroundImage: NetworkImage(
// 'https://img.freepik.com/premium-vector/cute-little-girl-wear-hat-sun-glasses-pulling-suitcase-waving-hand-go-travelling-vacation_535862-635.jpg?w=2000'
// ),
// ),
// //SizedBox(height: 10,),
// Image.asset('images/tra.png',height: 250,width: double.infinity,)
// ],
// ),
// ),

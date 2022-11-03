import 'package:flutter/material.dart';
import 'package:travel_app_ui/Screens/routing_page.dart';
import '../Equipment/color_class.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Future<void> _goHomeScreen() async {
    await Future.delayed(const Duration(seconds: 10)).then((value) =>
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
    return const Scaffold(
      backgroundColor: buttonColor,
      body: Center(
        child: CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(
              'https://scontent.fdac24-2.fna.fbcdn.net/v/t1.6435-9/157072549_972026243627804_1669391554455974685_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=0Ldk4vPQI9cAX9n_Vvk&_nc_ht=scontent.fdac24-2.fna&oh=00_AfDvsvzHWStEYMUJnuv68NbHLapraCA_CctNY5u0OQORzA&oe=6389CE52'),
        ),
      ),
    );
  }
}

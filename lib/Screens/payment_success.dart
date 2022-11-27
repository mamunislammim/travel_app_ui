import 'package:flutter/material.dart';

import '../Equipment/color_class.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    'https://media.istockphoto.com/vectors/cartoon-character-design-female-travel-with-luggage-and-passport-on-vector-id851997782',
                height: 200,
                ),
               // Image.asset("images/travelGirl.png"),
                const Text(
                  "Payment Sucess",
                  style: TextStyle(
                      color: buttonColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Your payment has been confirmed \nyou can check your ticket now",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 40, right: 40, top: 25, bottom: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: buttonColor,
                  ),
                  child: const Text(
                    "Check Your Ticket",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

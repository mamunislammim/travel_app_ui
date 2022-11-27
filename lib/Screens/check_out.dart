import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app_ui/Models/data.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:travel_app_ui/Screens/payment_success.dart';
import '../Equipment/color_class.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key, required this.upComingData});
  final DataClass upComingData;

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int _ticketCount = 1;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      persistentFooterButtons: [
        InkWell(
          onTap: (){
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const PaymentSuccess()
                  ),);
            });
          },
          child: Container(
            width: double.infinity,
            //height: 64,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            color: bgColor,
            child: Container(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), color: buttonColor),
              child: const Center(
                  child: Text(
                "Book Now",
                style: TextStyle(fontSize: 24, color: Colors.white),
              )),
            ),
          ),
        ),
      ],
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(
                  IconlyLight.arrow_left_circle,
                  color: buttonColor,
                )),
          ),
        ),
        title: const Text(
          "Payment",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: height / 2,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(widget.upComingData.uImageName),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 12, left: 14, right: 14, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ticket Details",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "Check The Amount Of Tickets",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      thickness: 0,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(IconlyLight.ticket),
                      title: Text(widget.upComingData.uPlaceName),
                      subtitle: Text(
                        widget.upComingData.uCountryName,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _ticketCount++;
                                });
                              },
                              child: const Icon(IconlyLight.plus)),
                          Text(
                            "$_ticketCount",
                            style: const TextStyle(color: buttonColor),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _ticketCount--;
                                });
                              },
                              child: const Icon(IconlyBroken.more_square)),
                        ],
                      ),
                    ),
                    const Text(
                      "Ticket purchases include the benefits obtained according to the information provided",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Payment Via",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              const Text("Visa"),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: const [
                                  Icon(
                                    IconlyLight.arrow_up_2,
                                    size: 16,
                                  ),
                                  Icon(
                                    IconlyLight.arrow_down_2,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme
                            .of(context)
                            .hintColor,
                      ),
                    ),
                    items: items
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ),

                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Price",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  widget.upComingData.uPrice,
                  style: const TextStyle(color: buttonColor, fontSize: 34),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

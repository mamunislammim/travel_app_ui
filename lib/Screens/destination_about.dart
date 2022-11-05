import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app_ui/Equipment/color_class.dart';
import 'package:travel_app_ui/Models/data.dart';
import 'package:travel_app_ui/Models/destination_class.dart';

class DestinationDetails extends StatefulWidget {
  const DestinationDetails({super.key, required this.upComingData});
  final DataClass upComingData;

  @override
  State<DestinationDetails> createState() => _DestinationDetailsState();
}

class _DestinationDetailsState extends State<DestinationDetails> {

  int _selectButton = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      persistentFooterButtons: [
        Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          color: bgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your Trip Count",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    widget.upComingData.uPrice,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 12, bottom: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: buttonColor),
                child: const Text("Book Now"),
              )
            ],
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
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  height: height / 8,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Duration",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "6 Days",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Participant",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "30 People",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Landing",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "2 Stop",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          // Second Column
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 10, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.upComingData.uPlaceName,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(IconlyLight.location),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.upComingData.uCountryName,
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          IconlyBold.star,
                          color: buttonColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.5 (2220)",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                // About Denefit Highlight
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          _selectButton = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 7, bottom: 7, left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: _selectButton == 1 ? buttonColor : Colors.white,
                        ),
                        child:  Text("About",style: TextStyle(color: _selectButton == 1 ? Colors.white : Colors.grey),),
                      ),
                    ),

                    // Benefit
                    InkWell(
                      onTap: (){
                        setState(() {
                          _selectButton = 2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 7, bottom: 7, left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: _selectButton == 2 ? buttonColor : Colors.white,
                        ),
                        child:   Text("Benefit",style: TextStyle(color: _selectButton == 2 ? Colors.white : Colors.grey)),
                      ),
                    ),

                    // Highlights
                    InkWell(
                      onTap: (){
                       setState(() {
                         _selectButton = 3;
                       });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 7, bottom: 7, left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: _selectButton == 3 ? buttonColor : Colors.white,
                        ),
                        child:   Text("Highlights",style: TextStyle(color: _selectButton == 3 ? Colors.white : Colors.grey)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                DestinationClass(selectedItem: _selectButton, dataItem: widget.upComingData)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

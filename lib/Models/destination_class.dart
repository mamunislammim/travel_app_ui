import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app_ui/Models/data.dart';
import 'package:travel_app_ui/Screens/check_out.dart';

class DestinationClass extends StatefulWidget {
  const DestinationClass(
      {super.key, required this.selectedItem, required this.dataItem});
  final DataClass dataItem;
  final int selectedItem;

  @override
  State<DestinationClass> createState() => _DestinationClassState();
}

class _DestinationClassState extends State<DestinationClass> {
  @override
  Widget build(BuildContext context) {
    if (widget.selectedItem == 1) {
      return const Text(
         """Fujiyama is closely related to Mount 
Fuji,[3] and was located in the crossroad 
of Miya and Yamaguchi mountain pilgrimage 
trails. During the Nakamura period, the hunting
event Fuji no Margarida arranged by shogun 
Minamoto no Tomonori was held in the ancient 
region of Fuji-no, where the Revenge of the Saga
Brothers incident also took place. 
         """,
        style: TextStyle(color: Colors.grey),
      );
    } else if (widget.selectedItem == 2) {
      return Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(IconlyLight.home),
            ),
            title: Text(
              "Hotel",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text("Charme Spagna Boutique Hotel"),
          ),
          InkWell(
            onTap: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CheckOut(upComingData: widget.dataItem),
                    ),
                  );
                },
              );
            },
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(IconlyLight.ticket),
              ),
              title: Text(
                "Ticket",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Text("1 ticket for one trip home and away"),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                IconlyLight.star,
                size: 22,
              ),
            ),
            title: Text(
              "The Best Food",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text("Daily meals for each vacation"),
          ),

        ],
      );
    } else {
      return Column(
        children: [
          ListTile(
            leading: Container(
              height: 94,
              width: 94,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(placeImage[0])),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: const Text(
              "Shiraito Falls",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: const Text("3 km"),
            trailing: const Icon(IconlyLight.arrow_right_2),
          ),
          ListTile(
            leading: Container(
              height: 94,
              width: 94,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(placeImage[1])),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: const Text(
              "Lake Tanuki",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: const Text("3 km"),
            trailing: const Icon(IconlyLight.arrow_right_2),
          ),
          ListTile(
            leading: Container(
              height: 94,
              width: 94,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(placeImage[2])),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: const Text(
              "Jimba Waterfalls",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: const Text("4 km"),
            trailing: const Icon(IconlyLight.arrow_right_2),
          ),
        ],
      );
    }
  }
}

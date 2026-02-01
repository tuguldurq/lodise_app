import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      // padding: EdgeInsets.all(value),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage("assets/images/event_1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            // dense: true,
            trailing: Text("40,000 ₮"),
            title: Text("Event avenue", maxLines: 2),
            subtitle: Text("4517, avenue Washington, Manchester"),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Chip(
                avatar: Icon(Icons.access_alarm),
                label: Text("13:00"),
                labelPadding: EdgeInsets.only(right: 8),
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
              ),
              TextButton(
                onPressed: () {
                  /**  */
                },
                child: Text("Тасалбар авах"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

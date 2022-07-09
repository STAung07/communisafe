import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Harlo Monke Bonke'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView.builder(
          itemBuilder: (context, index) => Card(),
          itemCount: 12
        ),
      ),
    );
  }

  Widget Card() => Container(
      height: 350.0,
      margin: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
          children: <Widget> [
            ListTile(
              leading: CircleAvatar(),
              title: Text("@samsmeestreet"),
              subtitle: Text("URGENT"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "LOST MY DOGE",
                  style: TextStyle(fontSize: 27, color: Color(0xff545454), fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://static.wikia.nocookie.net/universe-of-smash-bros-lawl/images/c/cf/Swole_Doge.png/revision/latest?cb=20210421164237"),
                          fit: BoxFit.cover,
                        )
                    )
                )
            )
          ]
      )
  );
}
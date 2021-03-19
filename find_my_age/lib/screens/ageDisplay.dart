import 'package:find_my_age/screens/homepage.dart';
import 'package:find_my_age/widgets/listOfAgeCards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeDisplay extends StatelessWidget {
  final DateTime dob;
  const AgeDisplay(this.dob);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Age'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.offAll(HomePage());
        },
        child: Icon(Icons.restore),
        elevation: 2.0,
      ),
      body: ListOfAgeCards(
        ageHours: DateTime.now().difference(dob).inHours,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Theme.of(context).accentColor,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.restore),
              onPressed: null,
            ),
            Text(
              'Change DOB',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}

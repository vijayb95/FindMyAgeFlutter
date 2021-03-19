import 'package:find_my_age/screens/ageDisplay.dart';
import 'package:find_my_age/widgets/datePicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final List<DateTime> dob = [];

  void _getDob(DateTime chosenDate) {
    dob.insert(0, chosenDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find My Age!'),
      ),
      body: SingleChildScrollView(
        //single child view
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/growth.png',
                fit: BoxFit.cover,
              ),
              Text(
                'Find your Age!',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              SizedBox(
                height: 15,
              ),
              DatePicker(_getDob),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (dob.isEmpty) {
                    Get.snackbar('Invalid Date', 'Choose a valid date',
                        barBlur: 100);
                    return;
                  }
                  Get.to(AgeDisplay(dob[0]));
                },
                child: Text(
                  'Let\'s get started',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).accentColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

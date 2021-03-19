import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime _selectedDate = DateTime.now();

    DateFormat dateFormat = DateFormat('EEE, MMM d, ' 'yy');
    return Scaffold(
      appBar: AppBar(
        title: Text('Find My Age!'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/growth.jpg',
                fit: BoxFit.cover,
              ),
              Text(
                'Select your Date Of Birth!',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              SizedBox(
                height: 15,
              ),
              OutlinedButton(
                onPressed: () async {
                  return _selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    errorFormatText: 'Enter a valid date.',
                    initialEntryMode: DatePickerEntryMode.calendar,
                  );
                },
                child: Text(
                  dateFormat.format(_selectedDate),
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
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

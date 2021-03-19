import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  final Function getDob;

  const DatePicker(this.getDob);
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _selectedDate;

  get selectedDate {
    return _selectedDate;
  }

  DateFormat dateFormat = DateFormat('EEE, MMM d, ' 'yy');

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      errorFormatText: 'Enter a valid date.',
      initialEntryMode: DatePickerEntryMode.calendar,
    ).then((pickedDate) {
      if (pickedDate == null)
        return;
      else {
        setState(() {
          _selectedDate = pickedDate;
        });
        widget.getDob(_selectedDate);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _selectedDate == null
              ? 'No Date Selected'
              : dateFormat.format(_selectedDate),
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        OutlinedButton(
          onPressed: _presentDatePicker,
          child: Text(
            _selectedDate == null ? 'Choose' : 'Change',
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18,
                fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}

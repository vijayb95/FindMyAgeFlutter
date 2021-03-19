import 'package:flutter/material.dart';

class AgeCard extends StatelessWidget {
  final child;
  const AgeCard({Key key, @required this.ageHours, @required this.child})
      : super(key: key);

  final int ageHours;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SizedBox(
        height: 50,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

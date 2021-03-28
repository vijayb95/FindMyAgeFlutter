import 'package:find_my_age/widgets/ageCard.dart';
import 'package:flutter/material.dart';

class ListOfAgeCards extends StatelessWidget {
  final int ageHours;

  const ListOfAgeCards({
    Key key,
    this.ageHours,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        top: 10,
        left: 5,
        right: 5,
      ),
      children: [
        AgeCard(
          ageHours: ageHours,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age in Years: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                (ageHours / (24 * 365)).toStringAsFixed(1),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              )
            ],
          ),
        ),
        Divider(),
        AgeCard(
          ageHours: ageHours,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age in Months: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                ((ageHours / (24 * 365)) * 12).toStringAsFixed(1),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              )
            ],
          ),
        ),
        Divider(),
        AgeCard(
          ageHours: ageHours,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age in Weeks: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                (ageHours / (24 * 7)).toStringAsFixed(1),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              )
            ],
          ),
        ),
        Divider(),
        AgeCard(
          ageHours: ageHours,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age in Days: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                (ageHours / (24)).toStringAsFixed(0),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              )
            ],
          ),
        ),
        Divider(),
        AgeCard(
          ageHours: ageHours,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age in Hours: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                (ageHours).toStringAsFixed(0),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              )
            ],
          ),
        ),
        Divider(),
        AgeCard(
          ageHours: ageHours,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age in Minutes: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                (ageHours * 60).toStringAsFixed(0),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              )
            ],
          ),
        ),
        Divider(),
        AgeCard(
          ageHours: ageHours,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Age in Seconds: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                (ageHours * 60 * 60).toStringAsFixed(0),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

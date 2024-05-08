import 'package:flutter/material.dart';
import 'package:rezmi/LocationTrackingScreen.dart';
import 'package:rezmi/MedicineremainderScreen.dart';
import 'package:rezmi/PatientInfoScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientInfoScreen()));
              },
              child: Text('Patient Info'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationTrackingScreen()));
              },
              child: Text('Location Tracking'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineReminderScreen()));
              },
              child: Text('Medicine Reminder'),
            ),
          ],
        ),
      ),
    );
  }
}
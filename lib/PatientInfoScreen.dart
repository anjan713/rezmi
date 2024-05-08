import 'package:flutter/material.dart';

class PatientInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Info'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: John Doe'),
            SizedBox(height: 8.0),
            Text('Age: 75'),
            SizedBox(height: 8.0),
            Text('Diagnosis: Alzheimer\'s'),
            SizedBox(height: 16.0),
            Text('Medical History:'),
            SizedBox(height: 8.0),
            Text('- Hypertension'),
            Text('- Diabetes'),
          ],
        ),
      ),
    );
  }
}
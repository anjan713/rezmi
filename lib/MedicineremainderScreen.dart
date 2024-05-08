import 'package:flutter/material.dart';

class MedicineReminderScreen extends StatefulWidget {
  @override
  _MedicineReminderScreenState createState() => _MedicineReminderScreenState();
}

class _MedicineReminderScreenState extends State<MedicineReminderScreen> {
  final _formKey = GlobalKey<FormState>();
  String _medicineName = '';
  TimeOfDay _medicineTime = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    _medicineTime = TimeOfDay.now();
  }

  void _saveMedicineReminder() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      // Save the medicine reminder to the database or local storage
      // and schedule a notification for the specified time
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Reminder'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Medicine Name',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter the medicine name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _medicineName = value ?? '';
                },
              ),
              SizedBox(height: 16.0),
              Text('Reminder Time: ${_medicineTime.format(context)}'),
              ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: _medicineTime,
                  );
                  if (selectedTime != null) {
                    setState(() {
                      _medicineTime = selectedTime;
                    });
                  }
                },
                child: Text('Set Reminder Time'),
              ),
              SizedBox(height: 32.0),
              Center(
                child: ElevatedButton(
                  onPressed: _saveMedicineReminder,
                  child: Text('Save Reminder'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
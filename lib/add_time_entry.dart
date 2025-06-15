import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting the selected date

class AddTimeEntry extends StatefulWidget {
  const AddTimeEntry({super.key});

  @override
  State<AddTimeEntry> createState() => _AddTimeEntryState();
}

class _AddTimeEntryState extends State<AddTimeEntry> {
  // Default dropdown values
  String dropdownValue1 = 'Project';
  String dropdownValue2 = 'Task1';

  // Selected date
  DateTime? selectedDate;

  // Date picker function
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Add Time Entry',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project Dropdown
            DropdownButtonFormField<String>(
              value: dropdownValue1,
              decoration: InputDecoration(
                labelText: 'Select Project',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue1 = newValue!;
                });
              },
              items: <String>[
                'Project',
                'Gamma Project',
                'Beta Project',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Task Dropdown
            DropdownButtonFormField<String>(
              value: dropdownValue2,
              decoration: InputDecoration(
                labelText: 'Select Task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue2 = newValue!;
                });
              },
              items: <String>[
                'Task1',
                'Task2',
                'Task3',
                'Task4',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Calendar picker
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate == null
                      ? 'No date selected'
                      : DateFormat('yyyy-MM-dd').format(selectedDate!),
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () => _selectDate(context),
                  child: const Text('Select Date'),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Time info (placeholder)
            const Text(
              'Total Time (in hour)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('1'),
            
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                labelText: 'Note',
                hintText: 'New work'
              ),
            ),
            SizedBox(height: 20,),

            TextButton(
              onPressed: () {
                // Your logic here
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black12,     // Button background color
                foregroundColor: Colors.blue,    // Text color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Save Time Entry'),
            )

          ],
        ),
      ),
    );
  }
}

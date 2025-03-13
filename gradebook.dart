import 'package:flutter/material.dart';

class GradeBookPage extends StatelessWidget {
  final List<Map<String, String>> students = [
    {"name": "Aliza", "subject": "Math", "grade": "A"},
    {"name": "Noor Huda", "subject": "Physics", "grade": "B+"},
    {"name": "Nabbigh", "subject": "Chemistry", "grade": "A-"},
    {"name": "Shiza", "subject": "Biology", "grade": "B"},
    {"name": "Ayesha", "subject": "English", "grade": "A+"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grade Book")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Student Grades",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Scrollable table
                child: DataTable(
                  columns: const [
                    DataColumn(
                      label: Text(
                        "Student Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Subject",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Grade",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows:
                      students.map((student) {
                        return DataRow(
                          cells: [
                            DataCell(Text(student["name"]!)),
                            DataCell(Text(student["subject"]!)),
                            DataCell(Text(student["grade"]!)),
                          ],
                        );
                      }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

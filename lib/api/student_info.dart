import 'package:http/http.dart' as http;
import 'package:mok1/api/student.dart';
import 'dart:convert';
import '../model/student_model.dart';

Future<Student> fetchStudentById(String studentId) async {
  final url = Uri.parse('https://iportal.mok.kz/intranet/scripts/aslan/mobile/get_student_info.php?student_id=$studentId');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonData = response.body;
    var parsedJson = json.decode(jsonData);
    var studentData = parsedJson[0]; // Assuming there's only one student in the JSON array
    var student = Student.fromJson(studentData);

    // Access student properties
    print('Barcode: ${student.barcode}');
    print('Student FIO: ${student.studentFio}');

    return student;
  } else {
    throw Exception('Failed to retrieve student data');
  }
}
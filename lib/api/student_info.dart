import 'package:http/http.dart' as http;
import 'package:mok1/api/student.dart';
import 'dart:convert';
import '../model/student_model.dart';

Future<Student> fetchStudentbyId(String studentId) async {
  final url = Uri.parse('https://iportal.mok.kz/intranet/scripts/aslan/mobile/get_student_info.php?student_id=$studentId');
  final response = await http.get(url);


  var jsonData = response;

  var parsedJson = json.decode(jsonData.body);
  var studentData = parsedJson[0]; // Assuming there's only one student in the JSON array
  var student = Student.fromJson(studentData);

  // Access student properties
  print('Barcode: ${student.barcode}');
  print('Student FIO: ${student.studentFio}');

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);

    if (jsonData != null) {
      final student = Student.fromJson(jsonData);
      return student;
    } else {
      throw Exception('Failed to parse student data');
    }
  } else {
    throw Exception('Failed to retrieve student data');
  }
}


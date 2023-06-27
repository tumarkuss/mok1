import 'dart:convert';

import 'package:mok1/api/student.dart';
import 'package:mok1/api/student_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;


Future<Map<String, dynamic>> login(String username, String password) async {
  final prefs = await SharedPreferences.getInstance();

  var queryParameters = {
    'username': username,
    'password': password,
    'service': 'moodle_mobile_app'
  };
  final uri = Uri.https('iportal.mok.kz', '/intranet/scripts/aslan/mobile/test_tumar.php', queryParameters);

  final response = await http.get(uri);
  
  Student student = Student.fromJson(jsonDecode(response.body));
  print(student.barcode);
  if (response.statusCode == 200) {
    final body = jsonDecode(response.body) as Map<String, dynamic>;

    if (body.containsKey("error")) {
      return {"success": false, "message": body["error"] as String};
      
    } else {
      await prefs.setString('authToken', body["token"]);
    }

    return {"success": true, "message": ""};
  } else {
    return {"success": false, "message": "Что-то пошло не так."};
  }
}

// Future<void> logout() async {
//   final prefs = await SharedPreferences.getInstance();

//   prefs.remove("authToken");
// }

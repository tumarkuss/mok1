import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
//URI : https://iportal.mok.kz/intranet/scripts/aslan/mobile/get_student_info.php?student_id=36

Future<Map<String, dynamic>> checkuser(String student_id) async {
  final prefs = await SharedPreferences.getInstance();

  var queryParameters = {
    'student_id': student_id,
    
  };
  final uri = Uri.https('iportal.mok.kz', 'intranet/scripts/aslan/mobile/get_student_info.php', queryParameters);

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    final body = jsonDecode(response.body) as List<dynamic>;
    print(body);
    if (body[0] != "empty")  {
      return {"success": true, student_id: 'Username Exists'};
    } else {
      return {"success": false, student_id: "Username Doesn't Exist"};
    }
  } else {
    return {"error": false, student_id: 'Нет ответа от сервера'};
  }
}

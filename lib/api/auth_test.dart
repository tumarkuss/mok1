import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
//https://iportal.mok.kz/intranet/scripts/aslan/mobile/test_tumar.php?username=tumar
Future<Map<String, dynamic>> checkuser(String username) async {
  final prefs = await SharedPreferences.getInstance();

  var queryParameters = {
    'username': username,
    
  };
  final uri = Uri.https('iportal.mok.kz', '/intranet/scripts/aslan/mobile/test_tumar.php', queryParameters);

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    final body = jsonDecode(response.body) as List<dynamic>;
    print(body);
    // ignore: unrelated_type_equality_checks
    if (body[0] != "empty")  {
      return {"success": true, username: 'Username Exists'};
    } else {
      return {"success": false, username: "Username Doesn't Exist"};
    }
  } else {
    return {"error": false, username: 'Нет ответа от сервера'};
  }
}

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
///194.39.65.2 PS.kz server Ipv address
import 'package:mok1/main.dart';
import 'package:mime_type/mime_type.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

Future sendRequest(
    {required String module, required String action, Object? body}) async {
  final prefs = await SharedPreferences.getInstance();

  var queryParameters = {
    'module': module,
    'action': action,
    'version': "1",
  };
  final String authToken = prefs.getString('authToken')!;

  final uri = Uri.https('194.39.65.2', '/database/users/users.sql', queryParameters);
  final response =
      await http.post(uri, body: body, headers: {'token': authToken});

  var decodedResponse = jsonDecode(response.body);
  if (decodedResponse["has_error"] as bool) {
    ErrorDescription("API Decode Response Error");
  }

  return decodedResponse["data"];
}

Future<Map<String, dynamic>> sendMDLWSRestServiceRequest(
    {required String wsfunction, Map<String, Object>? params}) async {
  final prefs = await SharedPreferences.getInstance();

  final String authToken = prefs.getString('authToken')!;

  var queryParameters = {
    'wstoken': authToken,
    'moodlewsrestformat': "json",
    'wsfunction': wsfunction
  };

  if (params != null) {
    params.forEach((k, v) => {queryParameters[k] = v.toString()});
  }

  final uri = Uri.https(
      'portal.aues.kz', '/webservice/rest/server.php', queryParameters);

  final response = await http.get(uri);
  final body = jsonDecode(response.body);

  try {
    final bodyParsed = (body as Map<String, dynamic>);
    if (bodyParsed.containsKey("exception")) {
      return {"success": false, "message": body["message"], "response": []};
    }
    return {"success": true, "message": "", "data": bodyParsed};
  } catch (e) {
    final bodyParsed = (body as List<dynamic>);
    return {"success": true, "message": "", "data": bodyParsed};
  }
}

Future sendMultipartRequest(
    {required String module,
    required String action,
    Map<String, String>? body,
    Map<String, String>? files}) async {
  final prefs = await SharedPreferences.getInstance();

  var queryParameters = {
    'module': module,
    'action': action,
    'version': "1",
  };
  final String authToken = prefs.getString('authToken')!;

  final uri = Uri.https('portal.aues.kz', '/mobile/index.php', queryParameters);

  var request = http.MultipartRequest("POST", uri);

  if (body != null) {
    request.fields.addAll(body);
  }
  request.headers['token'] = authToken;

  if (files != null && files.isNotEmpty) {
    for (String key in files.keys) {
      request.files.add(await http.MultipartFile.fromPath(key, files[key]!,
          contentType: MediaType.parse(mime(files[key]!)!)));
    }
  }

  final response = await http.Response.fromStream(await request.send());

  var decodedResponse = jsonDecode(response.body);
  if (decodedResponse["has_error"] as bool) {
    ErrorDescription("API:DecodeResponse Has Error");
  }

  return decodedResponse["data"];
}

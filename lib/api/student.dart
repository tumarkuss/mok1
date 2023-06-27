import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


// Data Parse example: [{"barcode":"k.akbosyn","student_fio":"Ақбосын Қымбат Айдарханқызы","op_name":"6B07352-Водоснабжение и канализация","faculty_name":"Факультет Общего Строительства","form_name":"очная","lang_name":"казахский","study_kurs":"1","group_name":"ВК-22-1*","level_name":"Бакалавриат","status":"Обучается","doc_iin":"040720601633","doc_num":"46930767","doc_date":"2020-09-04","doc_issued":"МВД РК","birth_date":"2004-07-20","birth_place":"ЮКО","nationality":"Казах","marital":null,"reg_street":null}]
//
//
//

class Student {
  final String barcode;
  final String studentFio;
  final String opName;
  final String facultyName;
  final String formName;
  final String langName;
  final String studyKurs;
  final String groupName;
  final String levelName;
  final String status;
  final String docIin;
  final String docNum;
  final String docDate;
  final String docIssued;
  final String birthDate;
  final String birthPlace;
  final String nationality;
  final String marital;
  final String regStreet;

  Student({
    required this.barcode,
    required this.studentFio,
    required this.opName,
    required this.facultyName,
    required this.formName,
    required this.langName,
    required this.studyKurs,
    required this.groupName,
    required this.levelName,
    required this.status,
    required this.docIin,
    required this.docNum,
    required this.docDate,
    required this.docIssued,
    required this.birthDate,
    required this.birthPlace,
    required this.nationality,
    required this.marital,
    required this.regStreet,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      barcode: json['barcode'],
      studentFio: json['student_fio'],
      opName: json['op_name'],
      facultyName: json['faculty_name'],
      formName: json['form_name'],
      langName: json['lang_name'],
      studyKurs: json['study_kurs'],
      groupName: json['group_name'],
      levelName: json['level_name'],
      status: json['status'],
      docIin: json['doc_iin'],
      docNum: json['doc_num'],
      docDate: json['doc_date'],
      docIssued: json['doc_issued'],
      birthDate: json['birth_date'],
      birthPlace: json['birth_place'],
      nationality: json['nationality'],
      marital: json['marital'],
      regStreet: json['reg_street'],
    );
  }
}

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/material.dart';

// class Student {
//   final String barcode;
//   final String student_fio;
//   final String op_name;
//   final String faculty_name;
//   final String form_name;
//   final String lang_name;
//   final String study_kurs;
//   final String group_name;
//   final String level_name;
//   final String status;
//   final String doc_iin;
//   final String doc_num;
//   final String doc_date;
//   final String doc_issued;
//   final String birth_date;
//   final String birth_place;
//   final String nationality;
//   final String marital;
//   final String reg_street;

//   Student({
//     required this.barcode,
//     required this.student_fio,
//     required this.op_name,
//     required this.faculty_name,
//     required this.form_name,
//     required this.lang_name,
//     required this.study_kurs,
//     required this.group_name,
//     required this.level_name,
//     required this.status,
//     required this.doc_iin,
//     required this.doc_num,
//     required this.doc_date,
//     required this.doc_issued,
//     required this.birth_date,
//     required this.birth_place,
//     required this.nationality,
//     required this.marital,
//     required this.reg_street,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'barcode': barcode,
//       'student_fio': student_fio,
//       'op_name': op_name,
//       'faculty_name': faculty_name,
//       'form_name': form_name,
//       'lang_name': lang_name,
//       'study_kurs': study_kurs,
//       'group_name': group_name,
//       'level_name': level_name,
//       'status': status,
//       'doc_iin': doc_iin,
//       'doc_num': doc_num,
//       'doc_date': doc_date,
//       'birth_place': birth_place,
//       'nationality': nationality,
//       'marital': marital,
//       'reg_street': reg_street,
//     };
//   }

//   factory Student.fromMap(Map<String, dynamic> map) {
//     return Student(
//       barcode: map['barcode'],
//       student_fio: map['student_fio'],
//       op_name: map['op_name'],
//       faculty_name: map['faculty_name'],
//       form_name: map['form_name'],
//       lang_name: map['lang_name'],
//       study_kurs: map['study_kurs'],
//       group_name: map['group_name'],
//       level_name: map['level_name'],
//       status: map['status'],
//       doc_iin: map['doc_iin'],
//       doc_num: map['doc_num'],
//       birth_place: map['birth_place'],
//       nationality: map['nationality'],
//       marital: map['marital'],
//       reg_street: map['reg_street'],
//       birth_date: map['birth_date'],
//       doc_date: map['doc_date'],
//       doc_issued: map['doc_issued'],
//     );
//   }

//   // String toJson() => json.encode(toMap());

//   // factory Student.fromJson(String source) => Student.fromMap(json.decode(source));
// }

import 'package:flutter/material.dart';

const Color kPrimaryColor = Colors.white10;

const String M = "Manrope";

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError =
    "";
const String kPhoneNullError = "Пожалуйста, введите свой номер";
const String kInvalidPhoneError =
    "Пожалуйста, введите корректный номер телефона";
const String kInvalidEmailError =
    "";
const String kPassNullError = "";
const String kShortPassError = "";
const String kMatchPassError = "Пароли не совпадают";
const String kNamelNullError = "Пожалуйста, введите свое имя";
const String kPhoneNumberNullError = "Пожалуйста, введите свой номер телефона";
const String kAddressNullError = "Пожалуйста, введите свой адрес";
const String kNameEmpty = "Отсутствует Имя";
const String kLastNameEmpty = "Отсутствует Фамилия";
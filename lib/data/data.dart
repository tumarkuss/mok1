import 'package:mok1/constant.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../model/course_model.dart';
import 'package:mok1/model/planing_model.dart';
import '../model/statistics_model.dart';

final List<Course> course = [
  Course(
      text: "Сопромат 1",
      lessons: "35 Лекций",
      imageUrl: "assets/images/pic/img1.png",
      percent: 75,
      backImage: "assets/images/box/box1.png",
      color: kDarkBlue),
  Course(
      text: "Физика",
      lessons: "30 Лекций",
      imageUrl: "assets/images/pic/img1.png",
      percent: 50,
      backImage: "assets/images/box/box2.png",
      color: kOrange),
  Course(
      text: "Сейсмика",
      lessons: "20 Лекций",
      imageUrl: "assets/images/pic/img1.png",
      percent: 25,
      backImage: "assets/images/box/box3.png",
      color: kGreen),
  Course(
      text: "Английский",
      lessons: "40 Лекций",
      imageUrl: "assets/images/pic/img1.png",
      percent: 75,
      backImage: "assets/images/box/box4.png",
      color: kYellow),
];

final List<Planing> planing = [
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "8:00 AM - 10:00 AM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "03:00 PM - 04:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "07:00 PM - 08:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Чтение - Глава 1 ",
    subHeading: "01:00 PM - 02:00 PM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
];

final List<Statistics> statistics = [
  Statistics(
    title: "Завершено",
    number: "02",
  ),
  Statistics(
    title: "Заработано баллов",
    number: "250",
  ),
  Statistics(
    title: "В процессе ",
    number: "03",
  ),
  Statistics(
    title: "Задач \nЗавершено",
    number: "05",
  )
];

import 'package:mok1/screens/components/chart_container.dart';

import 'package:mok1/screens/profile_screen/profile_screen.dart';
import 'package:mok1/widgets/activity_header.dart';
import 'package:mok1/widgets/bar_chart.dart';
import 'package:mok1/widgets/courses_grid.dart';
import 'package:mok1/widgets/planing_grid.dart';
import 'package:mok1/widgets/statistics_grid.dart';
import 'package:flutter/material.dart';

import '../../api/student.dart';
import '../../api/student_info.dart';
import '../notifications_screen/notifications_screen.dart';
import '/constant.dart';
import '/widgets/planing_header.dart';
import '../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final Student student;

  MainScreen({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Student Data
    String studentName = student.studentFio;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotificationScreen()));
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
           IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            icon: const Icon(
              Icons.person_2_rounded,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width:15),
          // Container(
          //   margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
          //   child: const CircleAvatar(
          //     backgroundImage: NetworkImage(
          //         "https://www.instagram.com/p/CljiLVTKFX6/?utm_source=ig_web_copy_link"),
          //   ),
          // )
        ],
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text:  TextSpan(
                  text: "Здравствуйте, ",
                  style: const TextStyle(color: kDarkBlue, fontSize: 20),
                  children: [
                    TextSpan(
                      text: studentName,
                      style: const TextStyle(
                          color: kDarkBlue, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: "!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Мои Курсы",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Открыть все",
                    style: TextStyle(color: kDarkBlue),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CourseGrid(),
              const SizedBox(
                height: 20,
              ),
              const PlaningHeader(),
              const SizedBox(
                height: 15,
              ),
              const PlaningGrid(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Статистика",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const StatisticsGrid(),
              const SizedBox(
                height: 15,
              ),
              const ActivityHeader(),
              const ChartContainer(chart: BarChartContent())
            ],
          ),
        ),
      ),
    );
  }
}
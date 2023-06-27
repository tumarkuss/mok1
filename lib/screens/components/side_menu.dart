import 'package:flutter/material.dart';
//import 'package:mok1/components/components.dart';
import 'package:mok1/screens/courses_screen/courses_screen.dart';
import 'package:mok1/screens/profile_screen/student_info.dart';
import 'package:mok1/screens/resources_screen/resources_screen.dart';
import 'package:mok1/screens/courses_screen/settings_screen.dart';
import 'package:mok1/screens/home_screen/home_screen.dart';
import 'package:mok1/screens/login_screen/body.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../api/student_info.dart';

//import '../../constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                child: Image.asset('assets/images/mok_logo_blue.png'))
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.home_2,
            title: "Общее",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CoursesScreen()),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.menu,
            title: "Курсы",
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CoursesScreen()),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.folder,
            title: "Ресурсы",
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResourcesScreen()),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Настройки",
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/help.png",
            height: 150,
          ),
          const SizedBox(height: 160,),
          DrawerListTile(
            icon: TernavIcons.lightOutline.logout,
            title: "Выйти",
            onTap: () {
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 100,
          //   margin: const EdgeInsets.all(24),
          //   padding: const EdgeInsets.all(defaultPadding),
            // decoration: BoxDecoration(
            //     color: kLightBlue, borderRadius: BorderRadius.circular(15)),
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     const Text("Конкурс",
            //         style: TextStyle(fontWeight: FontWeight.bold)),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         const Text("Принять участие", style: TextStyle(color: kDarkBlue)),
            //         InkWell(
            //           onTap: () {},
            //           child: Container(
            //             height: 30,
            //             width: 30,
            //             decoration: BoxDecoration(
            //               border: Border.all(color: kDarkBlue),
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //             child: const Icon(
            //               Icons.keyboard_double_arrow_right_rounded,
            //               color: kDarkBlue,
            //             ),
            //           ),
            //         )
            //       ],
            //     )
            //   ],
            // ),
          // ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

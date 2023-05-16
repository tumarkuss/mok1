import 'package:flutter/material.dart';

var userData = [
  "КазГАСА",
  "Бакалавриат",
  "Электротехника и Энергетика",
  "Теплоэнергетика",
  "Первокурсник",
  "Группа: Тест-1234"
];

var userDataIcons = [
  Icons.other_houses_outlined,
  Icons.book_online_outlined,
  Icons.bookmark_add_rounded,
  Icons.note_alt_outlined,
  Icons.numbers_outlined,
  Icons.groups_2_rounded,

];

var userDataIconsColors = [
  Colors.red,
  Colors.amber,
  Colors.blueAccent,
  Colors.green,
  Colors.orange,
  Colors.purple

]
;

profileCardBuilder(){
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
    padding: const EdgeInsets.all(8),
    itemCount: userData.length,
    itemBuilder: (BuildContext context, int index) {
      return profileCard(userData[index], userDataIcons[index], userDataIconsColors[index]);
    });
}

profileCard(String userData, IconData userDataIcon, Color userDataIconsColor){
  
  return Container(
          height: 80.0,
          padding: const EdgeInsetsDirectional.only(bottom: 15, start: 15, end: 15),

          color: Colors.transparent,
          child:  Container(
            padding: const EdgeInsets.all(5),
            decoration:  const BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.all(Radius.circular(15)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 3,),
                iconBox(userDataIcon, userDataIconsColor),
                SizedBox(width: 50),
                textBox(userData),
                const Spacer(),
                ],),
            ));
}

textBox(String text) {
  return Container(
    //color: Colors.red,
    width: 165,
    child: Text(
    text,
    style: const TextStyle(fontFamily: 'Montserrat',fontSize: 18,),
    overflow: TextOverflow.ellipsis,));
}

iconBox(IconData icon, Color iconsBackgroundColor) {
  return Container(
    height: 50,
    width: 50,
    color: Colors.transparent,
    child: Container(
        decoration:  BoxDecoration(
          color: iconsBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
          child:  Icon(icon, color: Colors.white, size: 35,),
    ),
    
  );
}
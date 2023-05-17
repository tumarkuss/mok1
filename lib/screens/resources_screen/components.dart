import 'package:flutter/material.dart';
import 'package:mok1/screens/resources_screen/attestation_screen/attestation_screen.dart';
import 'package:mok1/screens/resources_screen/schedule_screen/schedule_screen.dart';
import 'package:mok1/screens/resources_screen/spravki_screen/spravki_screen.dart';
import 'package:mok1/screens/resources_screen/transcript_screen/transcript_screen.dart';

var resourcesData = [
  "Расписание",
  "Транскрипт",
  "Справки",
  "Аттестация",
];

var resourcesDataImages = [
  "assets/images/box/box1.png",
  "assets/images/box/box2.png",
  "assets/images/box/box3.png",
  "assets/images/box/box4.png",
];

var localRoutes = [
  const ScheduleScreen(),
  const TranscriptScreen(),
  const SpravkiScreen(),
  const AttestationScreen(),
];

class ResourcesCardBuilder extends StatelessWidget {
  const ResourcesCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final double thisHeight = MediaQuery.of(context).size.height;
    final double thisWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemCount: resourcesData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector( child:  Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: thisHeight * 0.15,
                width: thisWidth * 0.8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                child: Stack(
                  children: [
                    Container(decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(resourcesDataImages[index]),
                        fit: BoxFit.fill,
                      ),)),
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                      child: clipRectTitle(resourcesData[index])),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,))
                  ],
                ),
              )),
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => localRoutes[index]),
                );
});
        });
  }
  
  Text clipRectTitle(String resourcesData) {
    return Text(resourcesData, style: const TextStyle(fontFamily: 'Montserrat', fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),);
  }
}

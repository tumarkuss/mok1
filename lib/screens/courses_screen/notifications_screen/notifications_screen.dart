import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';
import '/data/notifications_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: DefaultAppBar('Уведомления'),
      body: SingleChildScrollView(
        child: Align(alignment: AlignmentDirectional.topCenter, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:[
            Container(child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: notifications_data.length,
              itemBuilder: (BuildContext context, int index ) {
                return NotificationsBlock(width,index )
          ;}))
          
        ])
      ),
    ));
  }
}

Container NotificationsBlock(var width, index){
  var width;
  String text = '';
  text = notifications_data[index];

  return Container(
            margin: const EdgeInsets.all(10),
            height: 60,
            width: width,
            decoration:  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20),),
            border: Border.all(color: Colors.black54)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width:15),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                      child: Container(
                        color: Colors.black54,

                      child: const Icon(Icons.notification_add_outlined,color: Colors.white,)
                    ),),
                  ),
                  //Text Element 2
                  Expanded(child: Padding(padding: const EdgeInsets.all(15),child: Text(text, style: const TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 13 ))))
                  
              ],
            ), );
}
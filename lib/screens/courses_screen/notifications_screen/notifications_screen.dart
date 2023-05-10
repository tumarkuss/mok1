import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';
import '/data/notifications_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: DefaultAppBar('Уведомления'),
      body: SingleChildScrollView(
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: notifications_data.length,
                itemBuilder: (BuildContext context, int index) {
                  return NotificationsBlock(
                    width: width,
                    text: notifications_data[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationsBlock extends StatelessWidget {
  final double width;
  final String text;

  const NotificationsBlock({
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 60,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black54),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15),
          SizedBox(
            height: 35,
            width: 35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.black54,
                child: const Icon(
                  Icons.notification_add_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          //Text Element 2
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

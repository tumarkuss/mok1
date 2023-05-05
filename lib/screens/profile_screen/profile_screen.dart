import 'package:flutter/material.dart';
import 'package:mok1/data/user_data.dart';
import 'package:mok1/screens/profile_screen/components/avatar.dart';

import '../../components/components.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
    //Data Example
    String name = "Тумар";
    String lastName = "Кусаинов";
    int IIN = 990302000001;
    int degree = 2;
    bool gender = true;
    int education_type = 3;
    String login_name = "tumar.kussainov";
    String group = "Test-1234";
    String avatar_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Kassym-Jomart_Tokayev_%282020-02-01%29.jpg/412px-Kassym-Jomart_Tokayev_%282020-02-01%29.jpg";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.centerStart,
      appBar: DefaultAppBar('Профиль'),
      body: Column(
        children:  [
         ProfileImage(),
          const SizedBox(height: 20),
          Text('$login_name', style: const TextStyle(color: Colors.black, fontSize: 20),),

          

        ],)
    );
  }
  
  Widget ProfileImage() {
    return Center(child: SizedBox(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.network(
                avatar_url,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        

    );
  }
}
import 'package:flutter/material.dart';
import 'package:mok1/data/user_data.dart';
import 'package:mok1/screens/profile_screen/components/avatar.dart';

import '../../components/components.dart';
import '../../data/data.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
    //Data Example
    String name = "Тумар";
    String lastName = "Кусаинов";
    int IIN = 990302000001;
    int degree = 2;
    bool gender = true;
    int education_type = 3;
    String login_name = "kassym-zhomart.tokayev";
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
          informationBlock(),

          

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
  
  informationBlock() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
      Container(
        height: 100,
        width: 100,
        decoration:  const BoxDecoration(
              color: Color.fromARGB(255, 221, 221, 221),
              borderRadius:  BorderRadius.all(
                Radius.circular(60.0),
                
              )
            ),
        //child: ,
        
      )
      ,
      Container(
          height: 547.0,
          color: Colors.transparent,
          padding: const EdgeInsets.only(top: 40),
           child:Container(
            decoration:  const BoxDecoration(
              color: Color.fromARGB(255, 221, 221, 221),
              borderRadius:  BorderRadius.only(
                topLeft:  Radius.circular(40.0),
                topRight:  Radius.circular(40.0),
              )
            ),
         ),
        ),
      informationColumn()]);
                    
            
  }
  
  informationColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 65, margin: const EdgeInsets.only(top: 15) ,child: Image.asset('assets/images/graduation_cap.png', color: Colors.black,)
    ,),
        informationElement(),
    ]);
  }
  
  informationElement() {
    ///Information Element <-- to be ListView()
  }
}
import 'package:flutter/material.dart';
import 'package:youtube/src/app.dart';

import '../components/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,  //음영
        title: imageData(IconsPath.logo,width: 270,),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.all(15),
              child: imageData(IconsPath.directMessage,width: 50,),
            ),
          )
        ],
      ),
      body: ListView(

      ),
    );
  }
}

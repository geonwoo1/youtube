import 'package:flutter/material.dart';
import 'package:youtube/src/app.dart';
import 'package:youtube/src/components/avatar_widget.dart';
import 'package:youtube/src/components/post_widget.dart';

import '../components/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _myStory(){
    return Stack(
      children: [
        AvatarWidget(type:AvatarType.TYPE2,
          thumbPath:"https://blog.kakaocdn.net/dn/bAWp6J/btqZWNmvzdX/qLUKSWSdcyFG9VXfAzzszk/img.jpg" ,
        ),
        Positioned(
            right: 5,
            bottom: 0,
            child:Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                border: Border.all(color: Colors.white,width: 2)
              ),child: Center(
                child: Text("+",style: TextStyle(
                fontSize: 16,
                color: Colors.white
            ),),
              ),
            ) )
      ],
    );
  }
  Widget _postList(){
    return Column(
      children:
        List.generate(50, (index) => PostWidget(),)
      ,
    );
  }


  Widget _storyBoardList(){
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
      children:[
        SizedBox(
          width: 10,
        ),
        _myStory(),
        SizedBox(
          width: 5,
        ),
        ...List.generate(100, (index) => AvatarWidget(type: AvatarType.TYPE1, thumbPath:"https://blog.kakaocdn.net/dn/bAWp6J/btqZWNmvzdX/qLUKSWSdcyFG9VXfAzzszk/img.jpg" ))
      ]

    ),);
  }

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
      body: ListView(children: [
        _storyBoardList(),
        _postList()
      ],

      ),
    );
  }
}

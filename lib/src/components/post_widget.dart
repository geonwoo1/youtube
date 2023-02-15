import 'package:flutter/material.dart';
import 'package:youtube/src/components/avatar_widget.dart';
import 'package:youtube/src/components/image_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(type: AvatarType.TYPE3,
            thumbPath: "https://blog.kakaocdn.net/dn/bAWp6J/btqZWNmvzdX/qLUKSWSdcyFG9VXfAzzszk/img.jpg",
            size: 40,
            nickname: "이건우",),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(8),
              child: imageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
      imageUrl: "https://cdn.pixabay.com/photo/2019/08/07/14/10/golden-retriever-4390884__340.jpg",
    );
  }
Widget _infoCount(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              imageData(IconsPath.likeOffIcon,width: 65,),
              SizedBox(width: 15,),
              imageData(IconsPath.replyIcon,width: 60,),
              SizedBox(width: 15,),
              imageData(IconsPath.directMessage,width: 65,)
            ]),Row(
            children: [imageData(IconsPath.bookMarkOffIcon,width: 65,)],
          )

        ],
      ),
    );
}

Widget _infoDescription(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("좋아요 185개", style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          ExpandableText("콘텐츠1입니다 \n컨텐츠1입니다 \n 콘텐츠2입니다 \n 콘텐츠2입니다  \n 콘텐츠2입니다  ", expandText:"더보기",
            collapseText:"접기",
            prefixText: "이건우",
            onPrefixTap: (){
            print("ㅎㅇㅎㅇ");
            },
            prefixStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),maxLines: 3,

          )
        ],
      ),
    );
}
Widget _replyTextBtn(){
    return GestureDetector(
      onTap: (){
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          "댓글 199개 모두 보기",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13
          ),
        ),
      ),
    );
}
Widget _dateAgo(){
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Text(
      "1일전",style: TextStyle(
      color: Colors.grey,
      fontSize: 11,
    ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          _header(),
      SizedBox(
        height: 15,
      ),
      _image(),
      SizedBox(
        height: 15,
      ),
      _infoCount(),
            SizedBox(
              height: 5,
            ),
      _infoDescription(),
      _replyTextBtn(),
      _dateAgo(),
      ],
    ),


    );
  }
}

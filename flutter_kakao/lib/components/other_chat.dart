import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class OtherChat extends StatelessWidget {
  const OtherChat({Key? key, required this.name, required this.text, required this.time}) : super(key: key);

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            friends[0].backgroundImage
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          flex: 1, // 1 : default, 컬럼과 로우의 기본축의 남은 공간을 어떻게 차지 할 것 인지 설정하는 속성
          fit: FlexFit.loose, // default, 기본축의 남은 공간을 채우도록 하되 필요한 공간만큼 차지하도록 설정됨.
          // FlexFit.tight : 기본축의 남은공간을 전부 채움
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              const SizedBox(height: 2),
              Container(
                child: Text(text),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 4),
        Text(time, style: TextStyle(fontSize: 12),)
      ],
    );
  }
}

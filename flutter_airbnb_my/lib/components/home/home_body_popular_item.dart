import 'package:flutter/material.dart';
import 'package:flutter_airbnb_my/size.dart';
import 'package:flutter_airbnb_my/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({Key? key, required this.id}) : super(key: key);

  final id;
  final popularList = [
    'p1.jpeg',
    'p2.jpeg',
    'p3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 420,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/${popularList[id]}',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          '깔끔하고 다 갖춰져 있어서 좋았어요 :) 위치도 완전 좋아용 다들 여기 살고 싶다구 ㅋㅋㅋㅋㅋ 화장실도 3개에요!!! 5명이서 씻는것도 전혀 불편함 없이 좋았어요 ^^ 이불도 포근하고 좋습니당ㅎㅎ',
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/p1.jpeg'),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              '데어',
              style: subTitle1(),
            ),
            Text('한국'),
          ],
        )
      ],
    );
  }
}

import 'package:carrot_market_ui_1/models/neighborhood_life_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({Key? key, required this.timeLineItemList})
      : super(key: key);

  final List<TimeLineItem> timeLineItemList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '동네생활',
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.add_card_outlined),
          ),
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.air),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            height: 0.5,
            thickness: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  'https://placeimg.com/200/100/people',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text('이웃과 함께 만드는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요.'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }
  
  Widget _buildPopularTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '한국 숙소에 직접 다녀간 게스트의 후기', style: h5(),
        ),
        Text(
          '게스트 후기 2,500,000개 이상, 평균 평점 4.7(5점 만점)', 
          style: body1(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
  
  Widget _buildPopularList() {
    // 1. 전체 화면 사이즈를 1000이라고 가정하고 예시를 들어보면,
    // 2. buildPopularList의 너비가 화면의 70%이라면 700이다.
    // 3. HomeBodyPopularItem의 너비가 700 의 1/3인 233.33 - 5 하면 228.33 정도 이다. 
    // 4. 228.33의 인기 아이템이 3개가 배치되면 684.99 크기이고, 남은 크기는 15.01이 남는다. 
    // 5. 그래서 HomeBodyPopularItem 위젯 사이에 Sizebox를 width 7.5, 7.5를 줄 수 있다. 
    return Wrap( // 화면 줄였을때 위젯이 아래로 떨어지길 원할때 사용 
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}

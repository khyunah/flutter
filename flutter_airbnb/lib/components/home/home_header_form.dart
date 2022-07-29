import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print('screenWidth : ${screenWidth}');
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        // -1.0부터 1.0까지 가로 범위에서 0.1은 5%이다.
        // 사이즈가 520 보다 작으면 정중앙에 위치하게끔. (0, 0)
        // 아니라면 왼쪽으로 치우치도록 (-0.6, 0)
        alignment: screenWidth < 520 ? Alignment(0.0, 0.0) : Alignment(-0.6, 0.0), // 좌표값
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text('에어비앤비에서 숙소를 검색하세요'),
        SizedBox(height: gap_xs),
        Text('혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 공간 전체 숙소까지, 에어비앤비에 다 있습니다. '),
        SizedBox(height: gap_xs),
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(perfixText: '위치', hintText: '근처 추천 장소'),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
                child: CommonFormField(perfixText: '체크인', hintText: '날짜 입력')),
            SizedBox(width: gap_xs),
            Expanded(
                child: CommonFormField(perfixText: '체크아웃', hintText: '날짜 입력')),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(child: CommonFormField(perfixText: '성인', hintText: '2')),
            SizedBox(width: gap_xs),
            Expanded(child: CommonFormField(perfixText: '어린이', hintText: '0'))
          ],
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          '검색',
          style: subTitle1(mColor: Colors.white),
        ),
        onPressed: () {
          print('서브밋 클릭 됨');
        },
      ),
    );
  }
}

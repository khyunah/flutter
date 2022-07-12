import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem({Key? key, required this.imageName, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20), // symmetric 수직과 수평으로만 조절가능 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1, // 화면을 넓힐수 있는 최대 크기 로 들어가는 속성이고 비율을 정의하는것 , 가로 세로 로 비율 설정
            child: ClipRRect(  // 테두리 둥글게
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/${imageName}.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
              "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.", 
              style: const TextStyle(color: Colors.grey, fontSize: 12),)
        ],
      ),
    );
  }
}

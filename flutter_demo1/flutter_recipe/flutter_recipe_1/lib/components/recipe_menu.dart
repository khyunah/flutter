import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Berger"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  // 재사용할 수 있는 메서드로 만들기
  Widget _buildMenuItem(IconData mIcon, String text) {
    // 존재하지않는것 꾸밀때 Container 쓰기
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),  // 테두리 둥글게
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,  // 메인 수직정렬 방향
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30,),
          const SizedBox(
            height: 5,
          ),
          Text(text, style: const TextStyle(color: Colors.black87),),
        ],
      ),
    );
  }
}

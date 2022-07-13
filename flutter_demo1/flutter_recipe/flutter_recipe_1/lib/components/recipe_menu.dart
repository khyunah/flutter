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
          const SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          const SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Berger"),
          const SizedBox(width: 25),
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
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 0,
          )
        ],
        borderRadius: BorderRadius.circular(30), // 테두리 둥글게
        border: Border.all(color: Color.fromARGB(255, 186, 227, 20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 메인 수직정렬 방향
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_1/components/recipe_list_item.dart';
import 'package:flutter_recipe_1/components/recipe_menu.dart';
import 'package:flutter_recipe_1/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 얘 때문에 레이아웃 조정가능 함
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0, // 그림자
        actions: const [
          Icon(
            CupertinoIcons.search,
            color: Colors.black,
          ),
          SizedBox(width: 15),
          Icon(
            CupertinoIcons.heart,
            color: Colors.redAccent,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start, // 수평방향 정렬
            children: const [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem(imageName: "coffee", title: "Made Coffee"),
              RecipeListItem(imageName: "burger", title: "Made Burger"),
              RecipeListItem(imageName: "pizza", title: "Made Pizza"),
            ]),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0, // 그림자
      actions: const [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "Recipes",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    print("bodyWidth 70% : ${bodyWidth}");

    return SizedBox(
      width: bodyWidth,
      child: Column(
        children: [
          Container(color: Colors.amber),
          Container(color: Colors.black)
        ],
      ),
    );
  }
}

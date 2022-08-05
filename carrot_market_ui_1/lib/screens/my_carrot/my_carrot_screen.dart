import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나의 당근'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.gear_alt_fill,
              color: Colors.black,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(0.0),
            elevation: 0.7,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/6.jpg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              color: Colors.white,
                              child: Icon(CupertinoIcons.camera, size: 15),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'developer',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 10),
                          Text('좌동 #00912')
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    child: Center(
                      child: Text(
                        '프로필 보기',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIconMenu(CupertinoIcons.doc_chart, '판매내역'),
                      _buildIconMenu(CupertinoIcons.bag_fill, '구매내역'),
                      _buildIconMenu(CupertinoIcons.heart, '관심목록'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
            height: 5,
            thickness: 5,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.placemark_fill,
              size: 20,
            ),
            title: Text('내 동네 설정'),
          )
        ],
      ),
    );
  }

  Widget _buildIconMenu(IconData icon, String text) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.red[100]),
          width: 55,
          height: 55,
          child: Icon(
            icon,
            size: 25,
            color: Colors.yellow[900],
          ),
        ),
        SizedBox(height: 6),
        Text(text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Colors.black54)),
      ],
    );
  }
}

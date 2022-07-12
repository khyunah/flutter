import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '위젯 연습',
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/camping.jpg', 
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget> [
                      Text(
                        'Oeschinen Lake Campground', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Kandersteg, Switzeriand',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: const<Widget> [
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Text('41'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const <Widget> [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'CALL',
                        style: TextStyle(
                          color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const <Widget> [
                      Icon(
                        Icons.room_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'ROUTE',
                        style: TextStyle(
                          color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const <Widget> [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'SHARE',
                        style: TextStyle(
                          color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 78, 78, 78),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

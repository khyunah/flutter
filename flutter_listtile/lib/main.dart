import 'package:flutter/material.dart';
import 'package:flutter_listtile/click_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListTile Test'),
          backgroundColor: Colors.brown[300],
        ),
        body: ListView(
          children: [
            // title
            ListTile(
              tileColor: Colors.red[200],
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClickScreen(),
                    ));
              },
            ),
            const SizedBox(height: 3),
            // title + trailing
            ListTile(
              tileColor: Colors.red[100],
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.airplanemode_active_outlined,
              ),
            ),
            const SizedBox(height: 3),
            // leading + title
            ListTile(
              tileColor: Colors.red[200],
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.add_box,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 3),
            // leading + title + trailing
            ListTile(
              tileColor: Colors.red[100],
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.add_box,
                color: Colors.red,
              ),
              trailing: const Icon(Icons.airplanemode_active_outlined),
            ),
            const SizedBox(height: 3),
            // leading + title + subtitle
            ListTile(
              tileColor: Colors.red[200],
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.add_box,
                color: Colors.red,
              ),
              subtitle: const Text('subtitle'),
            ),
            const SizedBox(height: 3),
            // leading + title + subtitle + trailing
            ListTile(
              tileColor: Colors.red[100],
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.add_box,
                color: Colors.red,
              ),
              subtitle: const Text('subtitle'),
              trailing: const Icon(Icons.airplanemode_on_sharp),
            ),
            const SizedBox(height: 3),
            // leading + title + subtitle + trailing + icon사이즈 크게
            ListTile(
              tileColor: Colors.red[200],
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.add_box,
                color: Colors.red,
                size: 50,
              ),
              subtitle: const Text('subtitle'),
              trailing: const Icon(
                Icons.airplanemode_on_sharp,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

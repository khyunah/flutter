import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_http_demo1/album.dart';
import 'package:flutter_http_demo1/comments.dart';
import 'package:flutter_http_demo1/post.dart';
import 'package:http/http.dart' as http;
// 라이브러리 ( 같은 이름 객체 존재 하기때문에 별칭사용가능)

void main() {
  runApp(const MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '코멘트 연습',
      home: CommentTest(),
    );
  }
}

class CommentTest extends StatefulWidget {
  const CommentTest({Key? key}) : super(key: key);

  @override
  State<CommentTest> createState() => _CommentTestState();
}

class _CommentTestState extends State<CommentTest> {
  late Future<Comment> futureComment;

  @override
  void initState() {
    futureComment = fetchComment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Comment>(
          future: futureComment,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.body);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<Comment> fetchComment() async {
  Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/comments/1');
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    return Comment.parseComment(jsonDecode(response.body));
  } else {
    throw Exception('서버와 통신이 정상적으러 처리되지 않음');
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '포스트 연습',
      home: PostTest(),
    );
  }
}

class PostTest extends StatefulWidget {
  const PostTest({Key? key}) : super(key: key);

  @override
  State<PostTest> createState() => _PostTestState();
}

class _PostTestState extends State<PostTest> {
  late Future<Post> postFuture;

  @override
  void initState() {
    postFuture = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Post>(
          future: postFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text('제목 : ' + snapshot.data!.title),
                    Text('본문 : ' + snapshot.data!.body),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<Post> fetchPost() async {
  Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    return Post.parseJson(jsonDecode(response.body));
  } else {
    throw Exception('응답이 정상처리 되지 않았음.');
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http 연습',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    //futureNumber().then((value) => {print("value : $value")});

    // fetchAlbum().then((data) => {
    //   print('id : ${data.id}'),
    //   print('userId : ${data.userId}'),
    //   print('title : ${data.title}'),
    // });

    // 메소드를 바로 사용하면 빌드될때 마다 실행된다 initState에서 한번만 초기화를 해주는게 바람직 하다.
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('http lib ex'),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          // 제네릭 선언 해줘야 참조가능
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<int> futureNumber() async {
  return Future.delayed(
    Duration(seconds: 3),
    () {
      return 100;
    },
  );
}

Future<Album> fetchAlbum() async {
  Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/albums/2');
  final response = await http.get(uri);

  // jsonDecode json을 문자열로
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

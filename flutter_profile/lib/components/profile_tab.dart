import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 상태가 있는 위젯은 상태값들을 보존하고 추적할 수 있다.
  TabController? _tabController;

  // 클래스를 메모리에 올릴때 초기화 호출 되어지는 메소드
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
        length: 2,
        vsync:
            this); // length : 개수, this를 사용하려면 with SingleTickerProviderStateMixin Mixin 해야한다.
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

// TabBar 를 이용하기 위해서는 TabController 가 필요하고
// 컨트롤러를 만들기 위해서는 with SingleTickerProviderStateMixin을 사용해야 한다.
// 초기화할때 아이콘 개수와 어떤 컨트롤러를 사용할지 정의 해주면 됨.
  Widget _buildTabBar() {
    return TabBar(controller: _tabController, tabs: const [
      // List 형식
      Tab(icon: Icon(Icons.receipt_long_outlined)),
      Tab(icon: Icon(Icons.receipt)),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController, 
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10, // 하나당 횡축 여백
            mainAxisSpacing: 10, // 하나당 주축 여백
          ),
          itemCount: 42,
          itemBuilder: (context, index) {
            return Image.network('https://picsum.photos/id/${index + 1}/200/200'); // 이미지 주소로 받아오기
          },
        ),
        Container(
          color: Colors.orange,
        ),
      ]
    );
  }
}

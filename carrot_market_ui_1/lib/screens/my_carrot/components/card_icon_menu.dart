import 'package:carrot_market_ui_1/models/icon_menu.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class CardIconMenu extends StatelessWidget {
  const CardIconMenu({Key? key, required this.iconMenuList}) : super(key: key);

  final List<IconMenu> iconMenuList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // List.generate
          // 리스트를 만들어주는 이름이 명명된 생성자 이다.
          // length의 길이만큼 0부터 index -1까지의 범위의 각 인덱스를 오름차순으로 호출하여 만든 값으로 리스트를 생성한다.
          children: List.generate(
            iconMenuList.length,
            (index) => _buildRowIconItem(
                iconMenuList[index].title, iconMenuList[index].iconData),
          ),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17),
          const SizedBox(width: 20),
          Text(title, style: textTheme().subtitle1),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Urban Soft AL 10.0',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text('\$699', // $ 이스케이프 문자로 써줘야 나타난다.
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: const [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          Text('review'),
          Text('(26)', style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Color Options'),
          SizedBox(height: 10.0),
          Row(
            children: [
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5, // 시작지점 간격 / 마진
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      // 기본은 가운데 정렬
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog( // 팝업창
              title: Text('장바구니에 담으시겠습니까?'),
              actions: [
                CupertinoDialogAction( // 팝업창의 버튼
                    child: Text('확인'),
                    onPressed: () {
                      Navigator.pop(context); // 버튼 눌렀을때 팝업창 지우기 
                    }),
              ],
            ),
          );
        },
        child: Text(
          'Add to Cart',
          style: TextStyle(color: Colors.white),
        ),
        // TextButton은 기본 스타일이 정해져 있어서 스타일을 바꾸기 위해서 밑의 코드를 사용한다.
        style: TextButton.styleFrom(
          // 명명된 생성자  ( static 느낌 )
          backgroundColor: Colors.orange[300],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(300, 50),
        ),
      ),
    );
  }
}

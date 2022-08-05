class Product {
  String title;
  String author;
  String address;
  String urlToImage;
  String publishedAt;
  int price;
  int heartCount;
  int commentsCount;

  Product(this.title, this.author, this.address, this.urlToImage,
      this.publishedAt, this.price, this.heartCount, this.commentsCount);
}

final _urlPrefix =
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product';
// _7.jpg?raw=true
// 샘플 데이터
List<Product> productList = [
  Product('니트조끼', '당근이1', '좌동', '${_urlPrefix}_7.jpg?raw=true', '2시간 전', 35000,
      8, 3),
  Product('먼나라 이웃나라 12', '당근이2', '중동', '${_urlPrefix}_6.jpg?raw=true', '3시간 전',
      18000, 1, 3),
  Product('캐나다구스 패딩조', '당근이3', '우동', '${_urlPrefix}_5.jpg?raw=true', '1일 전',
      15000, 0, 12),
  Product('유럽여행', '당근이3', '우동', '${_urlPrefix}_4.jpg?raw=true', '3일 전', 15000,
      4, 11),
  Product('가죽파우치', '당근이4', '우동', '${_urlPrefix}_3.jpg?raw=true', '1주일 전', 95000,
      4, 7),
  Product('노트북', '당근이5', '중동', '${_urlPrefix}_2.jpg?raw=true', '2시간 전', 50000,
      1, 1),
  Product('아이패드', '당근이6', '좌동', '${_urlPrefix}_1.jpg?raw=true', '5시간 전', 100000,
      2, 3),
];

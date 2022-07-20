class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title);

  // factory 패턴이 아니라 factory 타입이다.
  // 싱글톤 패턴 이다. 한번 생성된 객체를 재활용하기 위해서 사용한다. 
  // 매개변수 Map을 사용하여 다트 오브젝트인 album 오브젝트로 변환하는 코드이다. 
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(json['userId'], json['id'], json['title']);
  }
}

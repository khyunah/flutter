class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMessage(
      {required this.sender,
      required this.profileImage,
      required this.location,
      required this.sendDate,
      required this.message,
      this.imageUri});
}

// 샘플 데이터
List<ChatMessage> chatMessageList = [
  ChatMessage(
      sender: '당근이',
      profileImage: 'https://placeimg.com/200/100/people/grayscale',
      location: '진구 중앙동',
      sendDate: '1일전',
      message: '다양한 물품이 많아요 다양한 물품이 많아요 다양한 물품이 많아요 다양한 물품이 많아요'),
  ChatMessage(
      sender: 'Flutter',
      profileImage: 'https://placeimg.com/200/100/people/grayscale',
      location: '중동',
      sendDate: '2일전',
      message: '안녕하세요 ~ 물품 문의합니다',
      imageUri: 'https://placeimg.com/200/100/people/grayscale'),
];

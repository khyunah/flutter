import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: small_gap,),
        TextFormField(
          // ! : 넘어오는 값이 null일수 없다고 지정해 두는 것 , reauierd 역할과 같다고 보면 된다. 
          validator: (value) => value!.isEmpty ? 'Please Enter some Text' : null,
          // 해당 TextFormField 가 Password 이면 입력양식을 *** 처리해주는 것 
          obscureText: text == "Password" ? true : false, 
          decoration: InputDecoration(
            hintText: 'Enter $text',
            // 기본 텍스트 폼필드 디자인 
            enabledBorder: OutlineInputBorder( 
              borderRadius: BorderRadius.circular(20),
            ),
            // 포커스 되었을때 디자인
            focusedBorder: OutlineInputBorder( 
              borderRadius: BorderRadius.circular(20),
            ),
            // 에러 발생시 디자인
            errorBorder: OutlineInputBorder( 
              borderRadius: BorderRadius.circular(20),
            ),
            // 에러 발생후 손가락으로 터치했을때 디자인
            focusedErrorBorder: OutlineInputBorder( 
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}

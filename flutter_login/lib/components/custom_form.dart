import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      // 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: 'Email'),
          SizedBox(height: large_gap),
          CustomTextFormField(text: 'Password'),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if(_formKey.currentState!.validate()){ // validate() : TextFormField 위젯의 validator를 콜백 한다. 
                Navigator.pushNamed(context, "/home"); // 루트로 찾아간다. 
              }
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}

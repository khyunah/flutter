import 'package:flutter/material.dart';
import 'package:flutter_airbnb_my/styles.dart';

class CommonFormField extends StatelessWidget {
  const CommonFormField({Key? key, required this.prefixText, required this.hintText}) : super(key: key);

  final prefixText;
  final hintText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            prefixText,
            style: overLine(),
          ),
        )
      ],
    );
  }
}


import 'package:flutter/material.dart';
class CustomFullScreenButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  CustomFullScreenButton({ this.title, this.onTap,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:52,
        decoration: BoxDecoration(
          color: Color(0xFF1B3F73),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text('$title',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Nunito',
            ),
          ),
        ),
      ),
    );
  }
}

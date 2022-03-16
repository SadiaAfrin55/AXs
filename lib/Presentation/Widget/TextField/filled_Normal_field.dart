
import 'package:flutter/material.dart';
class FilledNormalField extends StatefulWidget {
  final String? title;
  final String? headertitle;
  FilledNormalField({
   this.title,
   this.headertitle,
   Key? key}) : super(key: key);

  @override
  _FilledNormalFieldState createState() => _FilledNormalFieldState();
}

class _FilledNormalFieldState extends State<FilledNormalField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.headertitle!,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'Nunito',
              color: Color(0xFF232C2E),
            ),
          ),
          SizedBox(height: 7),
          Container(
            height: 50,
            color: Color(0xFFF5F7F8),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding:EdgeInsets.symmetric(horizontal: 10),
                hintText: widget.title!,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

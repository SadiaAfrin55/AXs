
import 'package:flutter/material.dart';
class TodatAttendence extends StatelessWidget {
  const TodatAttendence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('Track Activity',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color:Color(0xFF1E1F20),
            ),
          ),

        ],
      ),
    );
  }
}

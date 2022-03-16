
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      color: Color(0xFF1B3F73),
      child: Row(
        children: [
          CircleAvatar(
            radius: 48,
          ),
          SizedBox(height: 12),
          Column(
            children: [
              Text('data',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Nunito',
              ),
              ),
              SizedBox(height: 2),
              Text('data',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Nunito',
                ),
              ),
              SizedBox(width: 139),
              SvgPicture.asset('assets/images/sms.svg'),
            ],
          ),
        ],
      ),
    );
  }
}

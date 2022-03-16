
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ListRedCard extends StatefulWidget {
  const ListRedCard({Key? key}) : super(key: key);

  @override
  _ListRedCardState createState() => _ListRedCardState();
}

class _ListRedCardState extends State<ListRedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFEB5757),width: 1),
        color: Color(0xFFFCE3E3),
      ),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sed ut perspiciatis unde omnis iste',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'Nunito',
              color: Color(0xFFE1E1F20),
            ),
            ),
            SizedBox(height: 12),
            Expanded(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/pet.svg'),
                        SizedBox(width: 8),
                        Text('Technical issue',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Nunito',
                          color: Color(0xFF1E1F20),
                        ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/user.svg'),
                        SizedBox(width: 8),
                        Text('Teacher',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Nunito',
                            color: Color(0xFF1E1F20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                SvgPicture.asset('assets/icons/clock.svg'),
                SizedBox(width: 8),
                Text('Created 2 hr ago',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Nunito',
                    color: Color(0xFF1E1F20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

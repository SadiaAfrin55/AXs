
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ListGreenCard extends StatefulWidget {
  const ListGreenCard({Key? key}) : super(key: key);

  @override
  _ListGreenCardState createState() => _ListGreenCardState();
}

class _ListGreenCardState extends State<ListGreenCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/IssueHistoryDetails');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: 116,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFF08BC85),width: 1),
          color: Color(0xFFE2FEF5),
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
                          SvgPicture.asset('assets/icons/pet.svg',color: Color(0xFF08BC85),),
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
                          SvgPicture.asset('assets/icons/user.svg',color: Color(0xFF08BC85),),
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
                  SvgPicture.asset('assets/icons/clock.svg',color: Color(0xFF08BC85),),
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
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Button/custom_button.dart';
class IssueHistoryCard extends StatefulWidget {
  const IssueHistoryCard({Key? key}) : super(key: key);

  @override
  _IssueHistoryCardState createState() => _IssueHistoryCardState();
}

class _IssueHistoryCardState extends State<IssueHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/schoolName.svg',color: Colors.black,),
                    SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "School Name",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF1E1F20),
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/location.svg'),
                            SizedBox(width: 5),
                            Text(
                              "School Name",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OpenSans',
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomButton(
                  title: 'Issue',
                  color:Color(0xFFD9E4F4),
                  textColor:Color(0xFF1B3F73),
                  onTap: (){
                    Navigator.pushNamed(context, '/IssueHistoryList');
                  },
                ),
              ),
            ],
          ),
        ),

        Divider(
          thickness: 1,
          color:Color(0xFFEEEEEE),
        ),
      ],
    );
  }
}

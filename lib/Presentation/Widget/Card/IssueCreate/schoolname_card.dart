
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SchoolNameCard extends StatefulWidget {
  SchoolNameCard({Key? key}) : super(key: key);

  @override
  _SchoolNameCardState createState() => _SchoolNameCardState();
}

class _SchoolNameCardState extends State<SchoolNameCard> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Radio(
                    splashRadius: 24.0,
                    activeColor: Color(0xFF1B3F73),
                    fillColor: MaterialStateColor.resolveWith((states) => Color(0xFF1B3F73)),
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value as int;
                      });
                    },
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/schoolName.svg',color: Colors.black,),
                      SizedBox(width: 12),
                      Column(
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
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(
          thickness: 1,
          color:Color(0xFFEEEEEE),
        )
      ],
    );
  }
}

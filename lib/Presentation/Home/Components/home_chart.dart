
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../Widget/Button/custom_button.dart';

class HomeChartComponents extends StatefulWidget {
  const HomeChartComponents({Key? key}) : super(key: key);

  @override
  _HomeChartComponentsState createState() => _HomeChartComponentsState();
}

class _HomeChartComponentsState extends State<HomeChartComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
        height: 135,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create Issue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Nunito',
                    color: Color(0xFF2B3137)
                  ),
                  ),
                  SizedBox(height: 4),
                  Text('(32 issue creted today)',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Nunito',
                        color: Color(0xFF686B6F)
                    ),
                  ),
                  SizedBox(height: 12),
                  CustomButton(
                    title: 'Issue',
                    color:Color(0xFFD9E4F4),
                    textColor:Color(0xFF1B3F73),
                    onTap: (){
                      Navigator.pushNamed(context, '/createIssueHome');
                    },
                  ),
                ],
              ),
            ),
            //SizedBox(width: 61),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 7.0,
                  percent: 0.50,
                  progressColor: Color(0xFFF3BB10),
                  backgroundColor: Color(0xFFE2E2E2),
                ),
                SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Color(0xFFF3BB10),
                        ),
                        SizedBox(width: 4),
                        Text('70% (your)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Color(0xFFE2E2E2),
                        ),
                        SizedBox(width: 4),
                        Text('30% (others)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
              ),
            ),
          ],
        ),

    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Widget/Button/custom_button.dart';
import 'Components/home_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: SingleChildScrollView(
         child: Column(
           children: [
             HomeChartComponents(),
             CustomButton(
               title: 'Issue history',
               color:Color(0xFFD9E4F4),
               textColor:Color(0xFF1B3F73),
               onTap: (){
                 Navigator.pushNamed(context, '/IssueHistorySchool');
               },
             ),
           ],
         ),
       ),
      ),
    );
  }
}

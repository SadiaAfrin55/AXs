
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widget/Button/custom_fullscreen_btn.dart';
import '../../Widget/Card/IssueCreate/schoolname_card.dart';
class CreateIssueOne extends StatefulWidget {
  const CreateIssueOne({Key? key}) : super(key: key);

  @override
  _CreateIssueOneState createState() => _CreateIssueOneState();
}

class _CreateIssueOneState extends State<CreateIssueOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1B3F73),
          elevation: 0,
          title: Text('Create Issue',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontFamily: 'Nunito',
            color: Colors.white,
          ),
          ),
          centerTitle: true,
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,color: Colors.white),

            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SchoolNameCard(),
              SchoolNameCard(),
              SchoolNameCard(),
              SizedBox(height: 293),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomFullScreenButton(
                  title: 'Next',
                  onTap: (){
                    Navigator.pushNamed(context, '/CreateIssueTwo');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

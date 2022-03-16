
import 'package:flutter/material.dart';

import '../../Widget/Card/IssueHistory/schoolCard.dart';
class IssueHistorySchool extends StatefulWidget {
  const IssueHistorySchool({Key? key}) : super(key: key);

  @override
  _IssueHistorySchoolState createState() => _IssueHistorySchoolState();
}

class _IssueHistorySchoolState extends State<IssueHistorySchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B3F73),
        elevation: 0,
        title: Text('Issue History',
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
        child: Column(
          children: [
            IssueHistoryCard(),
            IssueHistoryCard(),
            IssueHistoryCard(),
          ],
        ),
      ),
    );
  }
}

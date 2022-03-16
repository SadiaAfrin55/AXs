

import 'package:flutter/material.dart';

import '../../Widget/Card/IssueHistory/listCard.dart';
import '../../Widget/Card/IssueHistory/listGreenCard.dart';
import '../../Widget/TabBar/pjp_tab_card.dart';


class IssueHistoryList extends StatefulWidget {
  const IssueHistoryList({Key? key}) : super(key: key);

  @override
  _IssueHistoryListState createState() => _IssueHistoryListState();
}

class _IssueHistoryListState extends State<IssueHistoryList> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            PjpTabCard(),
            SizedBox(height: 12,),
            ListRedCard(),
            SizedBox(height: 16),
            ListGreenCard(),
          ],
        ),
      ),
    );
  }
}

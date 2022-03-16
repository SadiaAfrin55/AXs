
import 'package:flutter/material.dart';

import '../Card/IssueHistory/listCard.dart';
class PjpTabCard extends StatefulWidget {
  @override
  _PjpTabCardState createState() => _PjpTabCardState();
}

class _PjpTabCardState extends State<PjpTabCard>  with SingleTickerProviderStateMixin{
  late TabController _tabController;
  List<Tab>? _kTabs;
  @override
  void initState() {
    _tabController =  TabController(length:12, vsync: this);
    _kTabs =[
      Tab(text: 'January'),
      Tab(text:'February'),
      Tab(text:'March'),
      Tab(text:'April'),
      Tab(text:'May'),
      Tab(text:'June'),
      Tab(text:'July'),
      Tab(text:'Auguest'),
      Tab(text:'September'),
      Tab(text:'October'),
      Tab(text:'November'),
      Tab(text:'December'),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width,
        height:50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //width: MediaQuery.of(context).size.width,
              height: 50,
              //padding:const EdgeInsets.symmetric(horizontal: 30),
              margin:const EdgeInsets.symmetric(horizontal: 12),
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Color(0xFF1B3F73),
                unselectedLabelColor: Color(0xFF1E1F20),
                  // indicator: BoxDecoration(// Creates border
                  //   color: Color(0xFF1B3F73),
                  // ),
                 indicator: UnderlineTabIndicator(
                   borderSide: BorderSide(color:Color(0xFF1B3F73),width: 2 ),
                 ),
                  tabs:_kTabs!
              ),
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListRedCard(),
                        ],
                      ),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

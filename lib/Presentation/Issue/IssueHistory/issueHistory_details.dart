
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widget/TabBar/pjp_tab_card.dart';
class IssueHistoryDetails extends StatefulWidget {
  const IssueHistoryDetails({Key? key}) : super(key: key);

  @override
  _IssueHistoryDetailsState createState() => _IssueHistoryDetailsState();
}

class _IssueHistoryDetailsState extends State<IssueHistoryDetails> {
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
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFEEF4FB),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Issue',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Nunito'
                  ),
                  ),
                  SizedBox(height: 8),
                  Text('Sed ut perspiciatis unde \n omnis iste',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                        color: Color(0xFF1E1F20),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/user.svg',color: Colors.black,),
                        SizedBox(width: 8),
                        Text('Issue Type',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text('Issue Type',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1, color: Colors.red,)
          ],
        ),
      ),
    );
  }
}

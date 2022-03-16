
import 'package:flutter/material.dart';

import '../../Widget/Button/custom_fullscreen_btn.dart';
import '../../Widget/DropDown/dropdownmenu.dart';
class CreateIssueTwo extends StatefulWidget {
  const CreateIssueTwo({Key? key}) : super(key: key);

  @override
  _CreateIssueTwoState createState() => _CreateIssueTwoState();
}

class _CreateIssueTwoState extends State<CreateIssueTwo> {

  List<String> issueTypeDrop = ['Technical','Non-Technical'];
  String? issueType;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal:6.0),
                    child: Text('Select Issue',
                      style: TextStyle(
                        fontSize:14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                        color:Color(0xFF232C2E),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(13),
                    color: Color(0xFFF5F7F8),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text('Select type',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8E9191)
                          ),
                        ),
                        value: issueType,
                        icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xFF292D32),),
                        iconSize: 20,
                        onChanged: (newValue) {
                          setState(() {
                            issueType = newValue.toString();
                            if(issueType=="Technical"){
                              setState(() {
                                isSelected=true;
                              });
                            }else{
                              setState(() {
                                isSelected=false;
                              });
                            }
                          });
                        },
                        items: issueTypeDrop.map((location) {
                          return DropdownMenuItem(
                            child:  Text(location),
                            value:location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 293),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomFullScreenButton(
                title: 'Next',
                onTap: (){
                  setState(() {
                  if(issueType=="Technical"){
                    Navigator.pushNamed(context, '/TechnicalCreateIssueOne');
                  }else{
                    Navigator.pushNamed(context, '/NonTechnicalCreateIssueOne');
                  }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

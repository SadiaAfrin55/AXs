
import 'package:flutter/material.dart';

import '../../../Widget/Button/custom_fullscreen_btn.dart';
import '../../../Widget/TextField/filled_Normal_field.dart';
import '../../../Widget/TextField/filled_description_textfield.dart';
class TechnicalCreateIssueTwo extends StatefulWidget {
  const TechnicalCreateIssueTwo({Key? key}) : super(key: key);

  @override
  _TechnicalCreateIssueTwoState createState() => _TechnicalCreateIssueTwoState();
}

class _TechnicalCreateIssueTwoState extends State<TechnicalCreateIssueTwo> {
  List<String> issueTypeDrop = ['Technical','Non-Technical'];
  List<String> forwhomTypeDrop = ['Teacher','Parent','Student','Admin'];
  String? issueType;
  String? forwhomType;
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal:6.0),
                          child: Text('Issue List',
                            style: TextStyle(
                              fontSize:15,
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
                              hint: Text('Others',
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
                  FilledDescriptionField(
                    title: 'Type reason',
                    headertitle: 'Write Reason(s)',
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal:6.0),
                          child: Text('For Whom',
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
                              value: forwhomType,
                              icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xFF292D32),),
                              iconSize: 20,
                              onChanged: (newValue) {
                                setState(() {
                                  forwhomType = newValue.toString();
                                  if(forwhomType=="Teacher"){
                                    setState(() {
                                      isSelected=true;
                                    });
                                  }if(forwhomType=="Parent"){
                                    setState(() {
                                      isSelected=true;
                                    });
                                  }if(forwhomType=="Student"){
                                    setState(() {
                                      isSelected=true;
                                    });
                                  }else(){
                                    setState(() {
                                      isSelected=false;
                                    });
                                  };
                                });
                              },
                              items: forwhomTypeDrop.map((location) {
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
                  FilledNormalField(
                    title: 'Name',
                    headertitle: 'Type name',
                  ),
                  FilledNormalField(
                    title: 'Contact Number',
                    headertitle: 'Type mobile number',
                  ),

                  //SizedBox(height: 77),

                ],
              ),
              CustomFullScreenButton(
                title: 'Next',
                onTap: (){
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

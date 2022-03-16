
import 'package:flutter/material.dart';
class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  List<String> issueTypeDrop = ['Technical','Non-Technical'];
  String? issueType;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal:6.0),
                  child: Text('Select',
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
                       hint: Text('Select',
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
        ),
    );
  }
}

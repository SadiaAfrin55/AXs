import 'package:axs_issue_tracker/Routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc/Home/user_cubit.dart';
import 'Presentation/Home/home_page.dart';
import 'Presentation/Issue/CreateIssue/NonTechnical/nonTechnicalCreateIssueOne.dart';
import 'Presentation/Issue/CreateIssue/NonTechnical/nonTechnicalCreateIssueTwo.dart';
import 'Presentation/Issue/CreateIssue/Technical/createIssue_one.dart';
import 'Presentation/Issue/CreateIssue/Technical/createIssue_two.dart';
import 'Presentation/Issue/CreateIssue/createIssue_one.dart';
import 'Presentation/Issue/CreateIssue/createIssue_two.dart';
import 'Presentation/Issue/IssueHistory/issueHistory_details.dart';
import 'Presentation/Issue/IssueHistory/issueHistory_list.dart';
import 'Presentation/Issue/IssueHistory/issueHistory_school.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<UserCubit>(
            create: (context) => UserCubit(),
          ),
        ],
      child: MaterialApp(
        title: 'AXs Issue Tracker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          '/createIssueHome': (context) => CreateIssueOne(),
          '/CreateIssueTwo': (context) => CreateIssueTwo(),
          '/TechnicalCreateIssueOne': (context) => TechnicalCreateIssueOne(),
          '/TechnicalCreateIssueTwo': (context) => TechnicalCreateIssueTwo(),
          '/NonTechnicalCreateIssueOne': (context) => NonTechnicalCreateIssueOne(),
          '/NonTechnicalCreateIssueTwo': (context) => NonTechnicalCreateIssueTwo(),

          //Issue History
          '/IssueHistorySchool': (context) => IssueHistorySchool(),
          '/IssueHistoryList': (context) => IssueHistoryList(),
          '/IssueHistoryDetails': (context) => IssueHistoryDetails(),
        },
      ),
    );
  }
}

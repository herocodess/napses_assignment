import 'package:app_assignment/screens/widgets/additional_message.dart';
import 'package:app_assignment/screens/widgets/calendar_widget.dart';
import 'package:app_assignment/screens/widgets/patient_info_widget.dart';
import 'package:app_assignment/screens/widgets/select_time_widget.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:app_assignment/utils/app_spacers.dart';
import 'package:flutter/material.dart';

import 'widgets/global_app_bar.dart';

class BookSessionScreen extends StatefulWidget {
  const BookSessionScreen({Key? key}) : super(key: key);

  @override
  _BookSessionScreenState createState() => _BookSessionScreenState();
}

class _BookSessionScreenState extends State<BookSessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: GlobalAppBar(
        isLeading: true,
        title: "Book Session",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PatientInfoWidget(),
            AppSpacers.height(20),
            CalendarWidget(),
            AppSpacers.height(20),
            SelectTimeWidget(),
            AppSpacers.height(20),
            AdditionalMessageWidget(),
            AppSpacers.height(40),
          ],
        ),
      ),
    );
  }
}

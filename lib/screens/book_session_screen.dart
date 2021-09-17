import 'dart:io';

import 'package:app_assignment/screens/widgets/calendar_widget.dart';
import 'package:app_assignment/screens/widgets/patient_info_widget.dart';
import 'package:app_assignment/screens/widgets/select_time_widget.dart';
import 'package:app_assignment/utils/app_assets.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:app_assignment/utils/app_spacers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kWhite,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
            color: AppColors.kBlack,
          ),
        ),
        title: Text(
          "Book Session",
          style: GoogleFonts.nunito(fontSize: 18, color: AppColors.kBlack),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Card(
              elevation: 5,
              shape: CircleBorder(),
              child: Container(
                width: 40,
                height: 40,
                child: Center(
                  child: Image.asset(
                    AppAssets.hands,
                    scale: 2.5,
                  ),
                ),
              ),
            ),
          ),
        ],
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
          ],
        ),
      ),
    );
  }
}

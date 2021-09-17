import 'dart:developer';

import 'package:app_assignment/screens/book_session_screen.dart';
import 'package:app_assignment/utils/app_assets.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:app_assignment/utils/app_spacers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:readmore/readmore.dart';

class BrowseTherapistScreen extends StatefulWidget {
  const BrowseTherapistScreen({Key? key}) : super(key: key);

  @override
  _BrowseTherapistScreenState createState() => _BrowseTherapistScreenState();
}

class _BrowseTherapistScreenState extends State<BrowseTherapistScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kWhite,
        automaticallyImplyLeading: false,
        title: Text(
          "Browse Therapists",
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
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 500,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage(AppAssets.allison),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: AppColors.kBlue.withOpacity(0.9),
                            ),
                            child: Center(
                              child: Text(
                                "12 Years Experience",
                                style: GoogleFonts.nunito(
                                    color: AppColors.kWhite,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      AppSpacers.height(10),
                      Center(
                        child: Text(
                          "Allison Korsgaard",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            color: AppColors.kGrey,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Ph.D in Clinical Psychology,\nDiploma in Clinical Therapy",
                          style: GoogleFonts.nunito(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, 50),
                child: Container(
                  height: isExpanded == true
                      ? MediaQuery.of(context).size.height / 1.5
                      : MediaQuery.of(context).size.height / 1.8,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.kGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    children: [
                      AppSpacers.height(180),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ReadMoreText(
                          'I am a passionate scholar-practitioner in the field of clinical psychology who divides her time between clinical practice, training and consulting, and scholarly writing and research. In my clinical practice, I deliver cognitive behavioral therapy (CBT) and other evidence-based treatments to adult and adolescent clients with a wide range of emotional, behavioral, and adjustment problems, such as anxiety, stress, depression, and relationship problems their own practice. I am a Clinical Assistant Professor at the University of Pennsylvania School of Medicine.',
                          trimLines: 3,
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            letterSpacing: 0.3,
                            color: AppColors.kBlack,
                          ),
                          textAlign: TextAlign.justify,
                          colorClickableText: AppColors.kBlack,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Details',
                          trimExpandedText: 'Less',
                          lessStyle: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kBlack,
                          ),
                          moreStyle: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kBlack,
                          ),
                          callback: (_) {
                            isExpanded = !isExpanded;
                            setState(() {});
                            log("isExpanded===$isExpanded");
                          },
                        ),
                      ),
                      AppSpacers.height(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Specialty",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.kGrey,
                              ),
                            ),
                            AppSpacers.width(5),
                            FeaturesWidget(
                              text: "Anxiety",
                            ),
                            AppSpacers.width(5),
                            FeaturesWidget(
                              text: "Depression",
                            ),
                          ],
                        ),
                      ),
                      AppSpacers.height(5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Language",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.kGrey,
                              ),
                            ),
                            AppSpacers.width(5),
                            FeaturesWidget(
                              text: "English",
                            ),
                            AppSpacers.width(5),
                            FeaturesWidget(
                              text: "Hindi",
                            ),
                          ],
                        ),
                      ),
                      AppSpacers.height(5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Fee",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.kGrey,
                              ),
                            ),
                            AppSpacers.width(5),
                            FeaturesWidget(
                              text: "₹ 700/Session",
                            ),
                          ],
                        ),
                      ),
                      isExpanded == true
                          ? AppSpacers.height(40)
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: isExpanded == true ? -500 : -350,
                child: GestureDetector(
                  onTap: () => pushNewScreen(
                    context,
                    screen: BookSessionScreen(),
                    withNavBar: true,
                  ),
                  child: Center(
                    child: Container(
                      height: 45,
                      width: 250,
                      decoration: BoxDecoration(
                        color: AppColors.kBlue.withOpacity(0.9),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "book a session".toUpperCase(),
                          style: GoogleFonts.nunito(
                              fontSize: 16, color: AppColors.kWhite),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturesWidget extends StatelessWidget {
  final String? text;
  const FeaturesWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGrey),
        color: AppColors.kGrey.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 2, top: 2),
          child: Text(
            text!,
            style: GoogleFonts.nunito(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.kGrey,
            ),
          ),
        ),
      ),
    );
  }
}

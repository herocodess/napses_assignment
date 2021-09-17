import 'package:app_assignment/utils/app_assets.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:app_assignment/utils/app_spacers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../browse_therapist_screen.dart';

class PatientInfoWidget extends StatelessWidget {
  const PatientInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.kGrey.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          AppSpacers.width(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Allison Korsgaard",
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: AppColors.kGrey,
                ),
              ),
              Text(
                "Ph.D in Clinical Psychology,\nDiploma in Clinical Therapy",
                style: GoogleFonts.nunito(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kBlack,
                ),
              ),
              AppSpacers.height(25),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FeaturesWidget(
                    text: "Anxiety",
                  ),
                  AppSpacers.width(5),
                  FeaturesWidget(
                    text: "Depression",
                  ),
                ],
              ),
              AppSpacers.height(10),
              FeaturesWidget(
                text: "₹ 700/Session",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

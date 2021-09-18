import 'dart:io';

import 'package:app_assignment/utils/app_assets.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool isLeading;
  final String title;
  const GlobalAppBar({
    Key? key,
    required this.isLeading,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.kWhite,
      automaticallyImplyLeading: false,
      leading: isLeading == true
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                color: AppColors.kBlack,
              ),
            )
          : null,
      title: Text(
        title,
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}

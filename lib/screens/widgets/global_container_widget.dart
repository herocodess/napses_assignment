import 'package:app_assignment/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalContainerWidget extends StatelessWidget {
  final double? height;
  final String? header;
  final Widget? content;
  const GlobalContainerWidget(
      {Key? key, this.height, this.header, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.kGrey.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                header!,
                style: GoogleFonts.nunito(
                    color: AppColors.kGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content!,
        ],
      ),
    );
  }
}

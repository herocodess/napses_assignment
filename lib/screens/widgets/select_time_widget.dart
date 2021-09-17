import 'package:app_assignment/screens/widgets/global_container_widget.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectTimeWidget extends StatefulWidget {
  const SelectTimeWidget({Key? key}) : super(key: key);

  @override
  _SelectTimeWidgetState createState() => _SelectTimeWidgetState();
}

class _SelectTimeWidgetState extends State<SelectTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return GlobalContainerWidget(
      height: 250,
      header: "Select Time",
      content: SelectTimeItemWidget(
        text: "9:30AM",
      ),
    );
  }
}

class SelectTimeItemWidget extends StatelessWidget {
  final String? text;
  final bool? isActive;
  const SelectTimeItemWidget({Key? key, this.text, this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGrey),
        color: AppColors.kGrey.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
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

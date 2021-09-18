import 'package:app_assignment/screens/widgets/global_container_widget.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:app_assignment/utils/app_spacers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectTimeWidget extends StatefulWidget {
  const SelectTimeWidget({Key? key}) : super(key: key);

  @override
  _SelectTimeWidgetState createState() => _SelectTimeWidgetState();
}

class _SelectTimeWidgetState extends State<SelectTimeWidget> {
  List<String> _availableTimes = [
    '09:00',
    '09:30',
    '10:00',
    '10:30',
    '11:00',
    '11:30'
  ];

  int _indexSelected = -1;

  void _onTimeSelected(int index) {
    setState(() {
      _indexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GlobalContainerWidget(
      height: 250,
      header: "Select Time",
      isCalendar: false,
      content: Flexible(
        child: Center(
          child: Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              ...List.generate(
                6,
                (index) => _TimeChipFilter(
                  label: _availableTimes[index] + ' AM',
                  isSelected: _indexSelected == index,
                  onTap: () => _onTimeSelected(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TimeChipFilter extends StatelessWidget {
  const _TimeChipFilter({
    Key? key,
    this.label,
    this.isSelected,
    this.onTap,
  }) : super(key: key);

  final String? label;
  final bool? isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: StadiumBorder(),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 45,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color:
              isSelected! ? Colors.blue[400] : AppColors.kGrey.withOpacity(0.1),
          border: isSelected!
              ? null
              : Border.all(
                  color: Colors.grey[600]!,
                  width: 1,
                ),
          boxShadow: isSelected!
              ? [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Colors.blue[400]!.withOpacity(.2),
                    blurRadius: 5,
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Text(
            label!,
            style: GoogleFonts.nunito(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isSelected! ? AppColors.kWhite : Colors.grey[800],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:app_assignment/screens/widgets/global_container_widget.dart';
import 'package:app_assignment/utils/app_spacers.dart';
import 'package:flutter/material.dart';

class AdditionalMessageWidget extends StatelessWidget {
  const AdditionalMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalContainerWidget(
      height: 350,
      header: "Message to Doctor",
      isCalendar: false,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSpacers.height(20),
          InputDetailsWidget(
            height: 45,
            hint: "Your name",
          ),
          AppSpacers.height(20),
          InputDetailsWidget(
            height: 150,
            hint: "Briefly explain what would you like \nto get help in",
          ),
        ],
      ),
    );
  }
}

class InputDetailsWidget extends StatelessWidget {
  final double? height;
  final String? hint;
  const InputDetailsWidget({
    Key? key,
    this.height,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Container(
        height: height!,
        width: double.maxFinite,
        child: TextFormField(
          cursorColor: Colors.black,
          maxLines: 6,
          decoration: new InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              hintText: hint),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80,
        ),
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        Spacer(
          flex: 3,
        ),
        CustomSearchIcon(),
      ],
    );
  }
}

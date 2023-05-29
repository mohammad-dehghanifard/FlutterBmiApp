import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    required this.size, required this.gender, required this.iconPath,
  });

  final Size size;
  final String gender;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip3D(
        height: size.height * 0.14,
        onSelected: () {},
        onUnSelected: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath,width: 64),
            const SizedBox(height: 8),
            Text(gender)
          ],
        ));
  }
}
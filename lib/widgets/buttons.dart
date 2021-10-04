import 'package:design_system/shared/styles.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final bool isActive;
  final String label;
  final Function()? onTap;
  final TextStyle style;

  const Buttons({
    required this.isActive,
    required this.label,
    required this.onTap,
    this.style = kBbold,
  });

  const Buttons.normal({
    required this.label,
    required this.onTap,
  }) : this.style = kNormal, this.isActive = true;

  const Buttons.light({
    required this.label,
    required this.onTap,
  }) : this.style = kLight, this.isActive = true;

  /*const Buttons.exit() :
        this.style = kLight,
        this.isActive = true,
        this.onTap = null, this.label = "SAINDO!";*/

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isActive ? onTap : null,
      child: Text(
        label,
        style: style,
      ),
    );
  }
}

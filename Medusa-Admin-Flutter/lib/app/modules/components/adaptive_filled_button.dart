import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFilledButton extends StatelessWidget {
  const AdaptiveFilledButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.buttonColor,
    this.buttonWidth,
    this.noShadow = false,
  }) : super(key: key);
  final void Function()? onPressed;
  final Widget child;
  final Color? buttonColor;
  final double? buttonWidth;
  final bool noShadow;
  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      /// default height is 36
      height: 45,
      minWidth: buttonWidth,
      color: buttonColor ?? Theme.of(context).primaryColor,
      textColor: Colors.white,
      onPressed: onPressed,
      child: child,
    );
  }
}

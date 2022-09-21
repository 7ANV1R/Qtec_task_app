import 'package:flutter/material.dart';

class CustomElevetedButton extends StatelessWidget {
  final BoxShape? shape;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget? child;

  const CustomElevetedButton({
    Key? key,
    this.onPressed,
    this.child,
    this.shape,
    this.width,
    this.height = 44.0,
    this.gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF6210E1),
        Color(0xFF6210E1),
        Color(0xFF1400AE),
      ],
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shape = this.shape ?? BoxShape.circle;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        // borderRadius: borderRadius,
        shape: shape,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: child,
      ),
    );
  }
}

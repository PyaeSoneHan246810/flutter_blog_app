import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: AppPallete.gradient2,
      strokeWidth: 4.0,
    );
  }
}
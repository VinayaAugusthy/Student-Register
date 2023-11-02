import 'package:flutter/material.dart';
import 'package:student_registration/utils/constants/colors.dart';

void callSnackBar({required var msg, required BuildContext ctx}) {
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: primaryColor,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Text(msg),
    ),
  );
}

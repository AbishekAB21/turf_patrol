import 'package:flutter/material.dart';

class ReusableSnackbar {
  showSnackbar(
    BuildContext context,
    String message,
    Color color,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: color,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(5)),
        content: Text(message)));
  }
}

// /// =========================================================
// /// 💡 SnackBarMessage Utility
// /// =========================================================
// /// A helper function to display a floating SnackBar across the app.
// /// Used for showing success, error, or informational messages to the user.
// /// Currently available as a global utility for any screen needing feedback.
// import 'package:flutter/material.dart';

// void SnackBarMessage({
//   required context,
//   required String text,
//   Color? backgroundColor,
// }) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(content: Text(text), backgroundColor: backgroundColor,
//      behavior: SnackBarBehavior.floating,),
//   );
// }

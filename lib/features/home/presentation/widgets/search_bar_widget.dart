import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE2E7B3),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for pet food, toys...',
          hintStyle: TextStyle(color: Color(0xFF7A7A7A), fontSize: 12.sp),
          prefixIcon: Icon(Icons.search, color: Color(0xFF5A5A5A), size: 20.sp),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        ),
      ),
    );
  }
}

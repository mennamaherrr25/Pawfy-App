import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/features/category/presentation/view/category_screen.dart';
import 'package:pawfy_app/features/cart/presentation/screens/cart_screen.dart';
import 'package:pawfy_app/features/home/presentation/screens/home_screen.dart';
import 'package:pawfy_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// =========================================================
/// 🏗️ LayoutScreen - Main Application Shell
/// =========================================================
/// This screen acts as the primary wrapper for the app, managing the 
/// Bottom Navigation Bar and switching between the main feature screens
/// (Home, Categories, Cart, Profile) using an IndexedStack for performance.
class LayoutScreen extends StatefulWidget {
  LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
        decoration: BoxDecoration(
          color: Color(0xFFFBF9DC),
          borderRadius: BorderRadius.circular(40.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.r),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.background,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Color(0xFF7D8365),
            selectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Icon(Icons.home_outlined, size: 24.sp),
                ),
                activeIcon: Container(
                  margin: EdgeInsets.only(bottom: 4.h),
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.home, color: Colors.white, size: 20.sp),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Icon(Icons.category_outlined, size: 24.sp),
                ),
                activeIcon: Container(
                  margin: EdgeInsets.only(bottom: 4.h),
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.category,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Icon(Icons.shopping_cart_outlined, size: 24.sp),
                ),
                activeIcon: Container(
                  margin: EdgeInsets.only(bottom: 4.h),
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Icon(Icons.person_outline, size: 24.sp),
                ),
                activeIcon: Container(
                  margin: EdgeInsets.only(bottom: 4.h),
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


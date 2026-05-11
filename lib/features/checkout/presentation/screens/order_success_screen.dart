import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Checkout',
          style: AppTextStyles.headlineLarge.copyWith(fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check, color: Colors.white, size: 40.sp),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'تم بنجاح! شكراً لطلبك',
                style: AppTextStyles.headlineLarge.copyWith(fontSize: 24.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                'تم استلام طلبك وبدأنا في تجهيز مستلزمات أليفك بكل حب',
                style: AppTextStyles.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              _buildOrderDetails(),
              SizedBox(height: 40.h),
              _buildTrackOrderButton(context),
              SizedBox(height: 15.h),
              TextButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.layout, (route) => false),
                child: Text(
                  'العودة للرئيسية',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderDetails() {
    return Container(
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('تفاصيل الطلب', style: AppTextStyles.headlineSmall),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  'تم الدفع',
                  style: AppTextStyles.bodySmall.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          _buildDetailRow('رقم الطلب:', 'PET-2024-8832#'),
          SizedBox(height: 10.h),
          _buildDetailRow('تاريخ التوصيل المتوقع:', 'الاثنين 15 أكتوبر'),
          SizedBox(height: 10.h),
          _buildDetailRow('إجمالي المبلغ:', '245.00 رس'),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.bodySmall),
        Text(value, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildTrackOrderButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        onPressed: () {
          // Track order logic
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('تتبع الطلب', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold)),
            SizedBox(width: 10.w),
            const Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

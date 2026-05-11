import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/constants/app_text_styles.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int selectedPaymentMethod = 0;

  final List<Map<String, dynamic>> paymentMethods = [
    {'icon': Icons.credit_card, 'title': 'Credit/Debit Card', 'subtitle': 'VISA / MASTERCARD'},
    {'icon': Icons.account_balance_wallet_outlined, 'title': 'Electronic Wallet', 'subtitle': ''},
    {'icon': Icons.payments_outlined, 'title': 'Fawry', 'subtitle': ''},
    {'icon': Icons.money_outlined, 'title': 'Cash on Delivery', 'subtitle': ''},
  ];

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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Text('Order Summary', style: AppTextStyles.headlineSmall),
            SizedBox(height: 15.h),
            _buildOrderItems(),
            SizedBox(height: 25.h),
            Text('Payment Method', style: AppTextStyles.headlineSmall),
            SizedBox(height: 15.h),
            _buildPaymentMethods(),
            SizedBox(height: 25.h),
            _buildTotalSection(),
            SizedBox(height: 30.h),
            _buildPayNowButton(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItems() {
    final items = [
      {'name': 'Lavender Shampoo', 'price': 18.00, 'qty': 1, 'img': '🧴'},
      {'name': 'Beef Hearts', 'price': 28.00, 'qty': 2, 'img': '🥩'},
      {'name': 'Cloud Bed', 'price': 70.00, 'qty': 1, 'img': '☁️'},
    ];

    return Column(
      children: items.map((item) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Row(
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(child: Text(item['img'] as String, style: TextStyle(fontSize: 24.sp))),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['name'] as String, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
                    Text('Qty: ${item['qty']}', style: AppTextStyles.bodySmall),
                  ],
                ),
              ),
              Text('\$${(item['price'] as double).toStringAsFixed(2)}', style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildPaymentMethods() {
    return Column(
      children: List.generate(paymentMethods.length, (index) {
        final isSelected = selectedPaymentMethod == index;
        return GestureDetector(
          onTap: () => setState(() => selectedPaymentMethod = index),
          child: Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary.withOpacity(0.05) : Colors.white,
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: isSelected ? AppColors.primary : AppColors.divider,
                width: isSelected ? 1.5 : 1,
              ),
            ),
            child: Row(
              children: [
                Icon(paymentMethods[index]['icon'], color: AppColors.primary, size: 24.sp),
                SizedBox(width: 15.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(paymentMethods[index]['title'], style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w600)),
                      if (paymentMethods[index]['subtitle'].isNotEmpty)
                        Text(paymentMethods[index]['subtitle'], style: AppTextStyles.bodySmall.copyWith(fontSize: 10.sp)),
                    ],
                  ),
                ),
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: isSelected ? AppColors.primary : AppColors.divider, width: 2),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildTotalSection() {
    return Column(
      children: [
        _buildSummaryRow('Subtotal', '\$116.00'),
        SizedBox(height: 8.h),
        _buildSummaryRow('Shipping', 'FREE', isGreen: true),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: AppTextStyles.headlineMedium),
            Text('\$116.00', style: AppTextStyles.headlineMedium.copyWith(color: AppColors.primary, fontSize: 22.sp)),
          ],
        ),
      ],
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isGreen = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.bodyMedium),
        Text(
          value,
          style: AppTextStyles.bodyMedium.copyWith(
            fontWeight: FontWeight.bold,
            color: isGreen ? AppColors.success : AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildPayNowButton() {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, AppRoutes.orderSuccess),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pay Now', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold)),
            SizedBox(width: 10.w),
            const Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

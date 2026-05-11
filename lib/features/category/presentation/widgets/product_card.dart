import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/routing/app_routes.dart';
import '../../../../core/constants/app_text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/category_cubit.dart';
import '../cubit/category_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final ProductItem product;
  final Color? backgroundColor;

  ProductCard({super.key, required this.product, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails),
        child: Container(
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.surface,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                blurRadius: 10,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tag & Image area
              Expanded(
                child: Stack(
                  children: [
                    // Placeholder for image
                    Center(
                      child: Icon(Icons.pets, size: 60.sp, color: Colors.black12),
                    ),
                    if (product.tag.isNotEmpty)
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            product.tag,
                            style: AppTextStyles.bodySmall.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),

              // Title
              Text(
                product.name,
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),

              // Weight
              Text(
                '1 kg', // product.weight if available
                style: AppTextStyles.bodySmall,
              ),
              SizedBox(height: 12.h),

              // Price and Add Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: AppTextStyles.labelLarge.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  _AddButton(product: product),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final ProductItem product;
  const _AddButton({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CategoryCubit>().addToCart(product);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${product.name} added to cart!'),
            duration: Duration(seconds: 1),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(6.r),
        decoration: BoxDecoration(
          color: AppColors.chipUnselectedBg,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add,
          color: AppColors.chipUnselectedText,
          size: 16.sp,
        ),
      ),
    );
  }
}


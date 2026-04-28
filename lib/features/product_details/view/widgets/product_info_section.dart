import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../view_model/product_details_cubit.dart';
import '../../view_model/product_details_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductInfoSection extends StatelessWidget {
  ProductInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Column(
        children: [
          // Tags
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.tagLightBlue,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  'NEW ARRIVAL',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.tagDarkTeal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.tagDarkTeal.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  'OASIS FOR DELIVERY',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          // Title
          Text(
            'Royal Canin Mini Adult',
            style: AppTextStyles.displayMedium,
          ),
          SizedBox(height: 12.h),
          
          // Rating and Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.starColor,
                          size: 14.sp, // Slightly smaller stars
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        '4.3 (124 reviews)',
                        style: AppTextStyles.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '\$24.99',
                style: AppTextStyles.price,
              ),
            ],
          ),
          SizedBox(height: 24.h),
          
          // Description
          _buildExpandableSection(
            context: context,
            title: 'Description',
            initiallyExpanded: true,
            child: Text(
              'Tailored nutrition for small breed dogs (9-22 lbs) from 10 months to 8 years old. Helps maintain a healthy weight with L-carnitine and satisfies the fussy appetites of small dogs with enhanced palatability.',
              style: AppTextStyles.bodyLarge.copyWith(height: 1.5),
            ),
          ),
          SizedBox(height: 16.h),
          
          // Ingredients
          _buildExpandableSection(
            context: context,
            title: 'Ingredients',
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildIngredientChip('Chicken By-Product Meal'),
                _buildIngredientChip('Brewers Rice'),
                _buildIngredientChip('Corn'),
                _buildIngredientChip('Chicken Fat'),
                _buildIngredientChip('Wheat Gluten'),
                _buildIngredientChip('Natural Flavors'),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          
          // Type and Weight Selectors
          Row(
            children: [
              // Type Selector
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.02),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.grass, color: AppColors.chipUnselectedText),
                      SizedBox(height: 8.h),
                      Text(
                        'TYPE',
                        style: AppTextStyles.bodyMedium.copyWith(fontSize: 10),
                      ),
                      Text(
                        'Dry Food',
                        style: AppTextStyles.labelLarge.copyWith(
                          color: AppColors.chipUnselectedText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              // Weight Selector
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.02),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          Icon(Icons.scale, color: AppColors.primary),
                          SizedBox(height: 8.h),
                          Text(
                            'WEIGHT',
                            style: AppTextStyles.bodyMedium.copyWith(fontSize: 10),
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: state.selectedWeight,
                              isDense: true,
                              icon: Icon(Icons.keyboard_arrow_down, size: 16.sp),
                                style: AppTextStyles.bodyMedium.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  context.read<ProductDetailsCubit>().selectWeight(newValue);
                                }
                              },
                              items: <String>['2 lbs (0.9kg)', '4 lbs (1.8kg)', '10 lbs (4.5kg)']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(child: Text(value, overflow: TextOverflow.ellipsis)),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _buildIngredientChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.chipUnselectedBg,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        label,
        style: AppTextStyles.bodySmall.copyWith(
          color: AppColors.chipUnselectedText,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildExpandableSection({
    required BuildContext context,
    required String title,
    required Widget child,
    bool initiallyExpanded = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Light background
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.black.withOpacity(0.05)),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: initiallyExpanded,
          iconColor: AppColors.primary,
          collapsedIconColor: AppColors.textSecondary,
          title: Text(
            title,
            style: AppTextStyles.headlineSmall,
          ),
          childrenPadding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
          children: [child],
        ),
      ),
    );
  }
}


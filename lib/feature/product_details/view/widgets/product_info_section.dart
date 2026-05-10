import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../view_model/product_details_cubit.dart';
import '../../view_model/product_details_state.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tags
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.tagLightBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'NEW ARRIVAL',
                  style: TextStyle(
                    color: AppColors.tagDarkTeal,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.tagDarkTeal.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'OASIS FOR DELIVERY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Title
          const Text(
            'Royal Canin Mini Adult',
            style: AppTextStyles.titleLarge,
          ),
          const SizedBox(height: 12),
          
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
                        (index) => const Icon(
                          Icons.star,
                          color: AppColors.starColor,
                          size: 14, // Slightly smaller stars
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Expanded(
                      child: Text(
                        '4.3 (124 reviews)',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                '\$24.99',
                style: AppTextStyles.price,
              ),
            ],
          ),
          const SizedBox(height: 24),
          
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
          const SizedBox(height: 16),
          
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
          const SizedBox(height: 24),
          
          // Type and Weight Selectors
          Row(
            children: [
              // Type Selector
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.02),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.grass, color: AppColors.chipUnselectedText),
                      const SizedBox(height: 8),
                      Text(
                        'TYPE',
                        style: AppTextStyles.bodyMedium.copyWith(fontSize: 10),
                      ),
                      const Text(
                        'Dry Food',
                        style: TextStyle(
                          color: AppColors.chipUnselectedText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // Weight Selector
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.02),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          const Icon(Icons.scale, color: AppColors.primary),
                          const SizedBox(height: 8),
                          Text(
                            'WEIGHT',
                            style: AppTextStyles.bodyMedium.copyWith(fontSize: 10),
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: state.selectedWeight,
                              isDense: true,
                              icon: const Icon(Icons.keyboard_arrow_down, size: 16),
                              style: const TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                fontFamily: 'Inter',
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
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildIngredientChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.chipUnselectedBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: AppColors.chipUnselectedText,
          fontSize: 12,
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
        color: const Color(0xFFF9F9F9), // Light background
        borderRadius: BorderRadius.circular(20),
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
            style: AppTextStyles.titleMedium,
          ),
          childrenPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          children: [child],
        ),
      ),
    );
  }
}

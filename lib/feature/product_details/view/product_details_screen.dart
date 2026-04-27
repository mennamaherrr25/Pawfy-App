import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_colors.dart';
import '../view_model/product_details_cubit.dart';
import '../view_model/product_details_state.dart';
import 'widgets/product_header_image.dart';
import 'widgets/product_info_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductDetailsCubit(),
      child: Scaffold(
        backgroundColor: AppColors.cardBackground,
        body: LayoutBuilder(
          builder: (context, constraints) {
            // Optimization for larger screens: constrain max width
            final double maxWidth = constraints.maxWidth > 600 ? 600 : constraints.maxWidth;
            
            return Center(
              child: SizedBox(
                width: maxWidth,
                child: Column(
                  children: [
                      Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const ProductHeaderImage(),
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: const ProductInfoSection(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildBottomRow(context),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBottomRow(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.background,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, -4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            // Quantity Selector
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF1F8E9), // Light green-ish background
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () => context.read<ProductDetailsCubit>().decrementQuantity(),
                        child: const Icon(Icons.remove, size: 20, color: AppColors.textSecondary),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        '${state.quantity}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: () => context.read<ProductDetailsCubit>().incrementQuantity(),
                        child: const Icon(Icons.add, size: 20, color: AppColors.textSecondary),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(width: 24),
            // Add to Cart Button
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Add to cart action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
                icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                label: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Playpen Sans',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

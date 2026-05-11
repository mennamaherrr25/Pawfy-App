import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../cubit/category_cubit.dart';
import '../cubit/category_state.dart';
import '../widgets/product_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// =========================================================
/// 📂 CategoryScreen - Product Catalog
/// =========================================================
/// Allows users to browse products by category with search and 
/// filtering capabilities. Optimized for smooth scrolling and 
/// efficient rebuilds using a standalone ProductGrid widget.
class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryCubit(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColors.textPrimary),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Dry Food',
            style: AppTextStyles.headlineMedium,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none, color: AppColors.primary),
              onPressed: () {},
            ),
          ],
        ),
        body: CategoryBody(),
      ),
    );
  }
}

class CategoryBody extends StatelessWidget {
  CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        CategorySearchBar(),
        SizedBox(height: 24.h),
        CategoryFiltersRow(),
        SizedBox(height: 24.h),
        Expanded(
          child: ProductGrid(),
        ),
      ],
    );
  }
}

class CategorySearchBar extends StatelessWidget {
  CategorySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          onChanged: (value) => context.read<CategoryCubit>().search(value),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 14.h),
            hintText: 'Search for pet food, toys...',
            hintStyle: AppTextStyles.bodyMedium,
            prefixIcon: Icon(Icons.search, color: AppColors.textSecondary, size: 24.sp),
            suffixIcon: Container(
              margin: EdgeInsets.all(4.r),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.tune, color: AppColors.primary, size: 20.sp),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryFiltersRow extends StatelessWidget {
  CategoryFiltersRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        buildWhen: (previous, current) => previous.selectedFilter != current.selectedFilter,
        builder: (context, state) {
          return Row(
            children: [
              FilterChipItem(label: 'All Filter', selectedFilter: state.selectedFilter, icon: Icons.filter_list),
              SizedBox(width: 12.w),
              FilterChipItem(label: 'Sort By', selectedFilter: state.selectedFilter, icon: Icons.swap_vert),
              SizedBox(width: 12.w),
              FilterChipItem(label: 'Puppy', selectedFilter: state.selectedFilter),
            ],
          );
        },
      ),
    );
  }
}

class FilterChipItem extends StatelessWidget {
  final String label;
  final String selectedFilter;
  final IconData? icon;

  FilterChipItem({
    super.key,
    required this.label,
    required this.selectedFilter,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = label == selectedFilter;
    
    return GestureDetector(
      onTap: () => context.read<CategoryCubit>().selectFilter(label),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20.r),
          border: isSelected ? Border.all(color: AppColors.primary.withOpacity(0.3)) : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  )
                ]
              : null,
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: 16.sp, color: isSelected ? AppColors.primary : AppColors.textSecondary),
              SizedBox(width: 6.w),
            ],
            Text(
              label,
              style: AppTextStyles.bodyMedium.copyWith(
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      buildWhen: (previous, current) => 
          previous.products != current.products || 
          previous.searchQuery != current.searchQuery,
      builder: (context, state) {
        final filteredProducts = state.products.where((p) {
          return p.name.toLowerCase().contains(state.searchQuery.toLowerCase());
        }).toList();

        return LayoutBuilder(
          builder: (context, constraints) {
            final double width = constraints.maxWidth;
            double aspectRatio = 0.7;
            if (width > 0) {
              final double itemWidth = (width - 48.w - 16) / 2;
              final double itemHeight = 240.h;
              aspectRatio = itemWidth / itemHeight;
            }

            return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: aspectRatio,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: filteredProducts[index],
                  backgroundColor: AppColors.getCardColor(index),
                );
              },
            );
          },
        );
      },
    );
  }
}

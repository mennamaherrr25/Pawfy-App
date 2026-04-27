import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../view_model/category_cubit.dart';
import '../view_model/category_state.dart';
import 'widgets/product_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Dry Food',
            style: AppTextStyles.titleMedium,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_none, color: AppColors.primary),
              onPressed: () {},
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final double maxWidth = 
            constraints.maxWidth > 600 ? 600 : constraints.maxWidth;
            
            return Center(
              child: SizedBox(
                width: maxWidth,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    _buildSearchBar(context),
                    const SizedBox(height: 24),
                    _buildFiltersRow(context),
                    const SizedBox(height: 24),
                    Expanded(
                      child: _buildProductGrid(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          onChanged: (value) => context.read<CategoryCubit>().search(value),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search dry food...',
            hintStyle: TextStyle(color: AppColors.textSecondary, fontSize: 14),
            icon: Icon(Icons.search, color: AppColors.textSecondary),
          ),
        ),
      ),
    );
  }

  Widget _buildFiltersRow(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return Row(
            children: [
              _buildFilterChip('All Filter', state.selectedFilter, context, icon: Icons.filter_list),
              const SizedBox(width: 12),
              _buildFilterChip('Sort By', state.selectedFilter, context, icon: Icons.swap_vert),
              const SizedBox(width: 12),
              _buildFilterChip('Puppy', state.selectedFilter, context),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFilterChip(String label, String selectedFilter, BuildContext context, {IconData? icon}) {
    final isSelected = label == selectedFilter;
    
    return GestureDetector(
      onTap: () => context.read<CategoryCubit>().selectFilter(label),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
          border: isSelected ? Border.all(color: AppColors.primary.withOpacity(0.3)) : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  )
                ]
              : null,
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: 16, color: isSelected ? AppColors.primary : AppColors.textSecondary),
              const SizedBox(width: 6),
            ],
            Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductGrid() {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        // Filter products based on search query
        final filteredProducts = state.products.where((p) {
          return p.name.toLowerCase().contains(state.searchQuery.toLowerCase());
        }).toList();

        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.7, // Adjust height of cards relative to width
          ),
          itemCount: filteredProducts.length,
          itemBuilder: (context, index) {
            return ProductCard(product: filteredProducts[index]);
          },
        );
      },
    );
  }
}

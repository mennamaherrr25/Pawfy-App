import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/features/favorite/presentation/widgets/fav_empty.dart';
import 'package:pawfy_app/features/favorite/presentation/widgets/fav_filter_chips.dart';
import 'package:pawfy_app/features/favorite/presentation/widgets/fav_section_header.dart';
import 'package:pawfy_app/features/favorite/presentation/widgets/favorite_item.dart';
import 'package:pawfy_app/features/home/presentation/widgets/home_app_bar.dart';

class _FavItem {
  final String name;
  final String subtitle;
  final double price;
  final String emoji;
  final bool inStock;
  final String category;

  const _FavItem({
    required this.name,
    required this.subtitle,
    required this.price,
    required this.emoji,
    required this.category,
    this.inStock = true,
  });
}

const _allItems = [
  _FavItem(
    name: 'Organic Lavender Shampoo',
    subtitle: '500ml • Sensitive Skin',
    price: 24.00,
    emoji: '🧴',
    category: 'Grooming',
  ),
  _FavItem(
    name: 'Freeze-Dried Beef Hearts',
    subtitle: 'Grain-free • 150g',
    price: 18.50,
    emoji: '🥩',
    category: 'Food',
  ),
  _FavItem(
    name: 'Orthopedic Cloud Bed',
    subtitle: 'Small • Ivory White',
    price: 55.00,
    emoji: '🛏️',
    category: 'Accessories',
    inStock: false,
  ),
  _FavItem(
    name: 'Interactive Feather Wand',
    subtitle: 'Cats & Kittens',
    price: 12.99,
    emoji: '🪄',
    category: 'Toys',
  ),
  _FavItem(
    name: 'Salmon Omega Drops',
    subtitle: 'Coat & Skin • 60ml',
    price: 29.00,
    emoji: '🐟',
    category: 'Food',
  ),
  _FavItem(
    name: 'Reflective Night Collar',
    subtitle: 'Adjustable • S/M/L',
    price: 16.50,
    emoji: '🏷️',
    category: 'Accessories',
  ),
];

const _filters = ['All', 'Food', 'Grooming', 'Toys', 'Accessories'];

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  int _filterIndex = 0;

  List<_FavItem> get _filtered {
    if (_filterIndex == 0) return _allItems;
    final cat = _filters[_filterIndex];
    return _allItems.where((i) => i.category == cat).toList();
  }

  @override
  Widget build(BuildContext context) {
    final items = _filtered;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            HomeAppBar(),

            Expanded(
              child: items.isEmpty
                  ? const FavEmptyState()
                  : CustomScrollView(
                      slivers: [
                        // Filter chips
                        SliverToBoxAdapter(
                          child: FavFilterChips(
                            filters: _filters,
                            selectedIndex: _filterIndex,
                            onSelected: (i) => setState(() => _filterIndex = i),
                          ),
                        ),

                        SliverToBoxAdapter(
                          child: FavSectionHeader(
                            count: items.length,
                            onSort: () {},
                          ),
                        ),

                        SliverPadding(
                          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 20.h),
                          sliver: SliverGrid(
                            delegate: SliverChildBuilderDelegate((
                              context,
                              index,
                            ) {
                              final item = items[index];
                              return FavItemCard(
                                name: item.name,
                                subtitle: item.subtitle,
                                price: item.price,
                                emoji: item.emoji,
                                inStock: item.inStock,
                                onAddToCart: () {},
                                onRemoveFav: () {},
                              );
                            }, childCount: items.length),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 12.w,
                                  mainAxisSpacing: 12.h,
                                  childAspectRatio: 0.72,
                                ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

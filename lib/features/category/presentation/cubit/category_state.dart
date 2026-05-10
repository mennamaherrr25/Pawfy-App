import 'package:equatable/equatable.dart';

class ProductItem extends Equatable {
  final String id;
  final String name;
  final String weight;
  final double price;
  final String tag;

  const ProductItem({
    required this.id,
    required this.name,
    required this.weight,
    required this.price,
    this.tag = '',
  });

  @override
  List<Object?> get props => [id, name, weight, price, tag];
}

class CategoryState extends Equatable {
  final String searchQuery;
  final String selectedFilter;
  final List<ProductItem> products;
  final int cartCount;

  const CategoryState({
    this.searchQuery = '',
    this.selectedFilter = 'Puppy',
    this.products = const [],
    this.cartCount = 0,
  });

  CategoryState copyWith({
    String? searchQuery,
    String? selectedFilter,
    List<ProductItem>? products,
    int? cartCount,
  }) {
    return CategoryState(
      searchQuery: searchQuery ?? this.searchQuery,
      selectedFilter: selectedFilter ?? this.selectedFilter,
      products: products ?? this.products,
      cartCount: cartCount ?? this.cartCount,
    );
  }

  @override
  List<Object?> get props => [searchQuery, selectedFilter, products, cartCount];
}

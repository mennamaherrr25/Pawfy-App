import 'package:flutter_bloc/flutter_bloc.dart';
import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(const CategoryState()) {
    _loadProducts();
  }

  void _loadProducts() {
    // Dummy products based on Figma design
    final List<ProductItem> dummyProducts = [
      const ProductItem(
        id: '1',
        name: 'Organic Turkey & Sweet Potato',
        weight: '12.5 kg',
        price: 45.99,
        tag: 'NEW',
      ),
      const ProductItem(
        id: '2',
        name: 'Grain-Free Salmon Bliss',
        weight: '8.0 kg',
        price: 38.50,
      ),
      const ProductItem(
        id: '3',
        name: 'Puppy Growth Formula',
        weight: '5.0 kg',
        price: 24.00,
      ),
      const ProductItem(
        id: '4',
        name: 'Senior Care Wild Duck',
        weight: '10.0 kg',
        price: 52.99,
      ),
    ];
    emit(state.copyWith(products: dummyProducts));
  }

  void selectFilter(String filter) {
    emit(state.copyWith(selectedFilter: filter));
  }

  void search(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void addToCart(ProductItem product) {
    emit(state.copyWith(cartCount: state.cartCount + 1));
  }
}

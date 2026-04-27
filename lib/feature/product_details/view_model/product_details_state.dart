import 'package:equatable/equatable.dart';

class ProductDetailsState extends Equatable {
  final int quantity;
  final String selectedWeight;
  final bool isFavorite;

  const ProductDetailsState({
    this.quantity = 1,
    this.selectedWeight = '4 lbs (1.8kg)',
    this.isFavorite = false,
  });

  ProductDetailsState copyWith({
    int? quantity,
    String? selectedWeight,
    bool? isFavorite,
  }) {
    return ProductDetailsState(
      quantity: quantity ?? this.quantity,
      selectedWeight: selectedWeight ?? this.selectedWeight,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [quantity, selectedWeight, isFavorite];
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_images.dart';
import '../../view_model/product_details_cubit.dart';
import '../../view_model/product_details_state.dart';

class ProductHeaderImage extends StatelessWidget {
  const ProductHeaderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For responsiveness, we can constrain the height based on screen size
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Stack(
      children: [
        // Main Image Container
        Container(
          height: screenHeight * 0.33,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 80, bottom: 20, left: 40, right: 40),
          child: Image.asset(
            AppImages.productImage,
            fit: BoxFit.contain,
          ),
        ),
        
        // Top Overlay Icons (Back, Share, Favorite)
        Positioned(
          top: MediaQuery.of(context).padding.top + 16,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCircleButton(
                icon: Icons.arrow_back,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              Row(
                children: [
                  _buildCircleButton(
                    icon: Icons.share,
                    onTap: () {
                      // Handle share
                    },
                  ),
                  const SizedBox(width: 12),
                  BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
                    builder: (context, state) {
                      return _buildCircleButton(
                        icon: state.isFavorite ? Icons.favorite : Icons.favorite_border,
                        iconColor: state.isFavorite ? Colors.red : Colors.black,
                        onTap: () {
                          context.read<ProductDetailsCubit>().toggleFavorite();
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCircleButton({
    required IconData icon,
    required VoidCallback onTap,
    Color iconColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
      ),
    );
  }
}

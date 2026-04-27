import 'package:flutter/material.dart';
import 'package:pawfy_app/features/cart/presentation/widgets/cart_header.dart';
import 'package:pawfy_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:pawfy_app/features/cart/presentation/widgets/checkout_button.dart';
import 'package:pawfy_app/features/cart/presentation/widgets/donate_card.dart';
import 'package:pawfy_app/features/cart/presentation/widgets/order_summary.dart';
import 'package:pawfy_app/features/home/presentation/widgets/home_app_bar.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const HomeAppBar(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 100),
                  children: const [
                    CartHeader(itemCount: 3, isPriority: true),
                    CartItemCard(
                      name: 'Organic Lavender Shampoo',
                      subtitle: '500ml • Sensitive Skin',
                      price: 24.00,
                      quantity: 1,
                      emoji: '🧴',
                    ),

                    CartItemCard(
                      name: 'Freeze-Dried Beef Hearts',
                      subtitle: 'Grain-free • 150g',
                      price: 18.50,
                      quantity: 2,
                      emoji: '🥩',
                      badge: 'SALE',
                    ),

                    CartItemCard(
                      name: 'Orthopedic Cloud Bed',
                      subtitle: 'Small • Ivory White',
                      price: 55.00,
                      quantity: 1,
                      emoji: '🛏️',
                    ),

                    SizedBox(height: 8),

                    OrderSummary(
                      subtotal: 116.00,
                      total: 116.00,
                      freeShipping: true,
                    ),

                    CheckoutButton(),

                    DonateCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

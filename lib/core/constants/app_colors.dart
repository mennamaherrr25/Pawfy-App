import 'package:flutter/material.dart';

/// 🎨 App Color System (Design Tokens)
/// Organized for scalability, readability, and maintainability
/// =========================================================
/// 🎨 AppColors - Centralized Color System
/// =========================================================
/// This class contains all the color definitions for the Pawfy application.
/// It uses a Design Token system to ensure consistency and easy maintenance.
class AppColors {
  const AppColors._(); // 🔒 Prevent instantiation

  // =========================
  // 🎯 Brand Colors
  // =========================
  static const Color primary = Color(0xFF512DA8);
  static const Color primaryLight = Color(0xFF8E7DBE);
  static const Color secondaryColor = Color(0xFFF7CFD8);
  static const Color accentColor = Color(0xFF8E7DBE);

  // =========================
  // 🧱 Background & Surfaces
  // =========================
  static const Color background = Color(0xFFFFFFFF);
  static const Color background2 = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFFEFBEA);
  static const Color card = Color(0xFFFEFBEA);

  // =========================
  // ✍️ Text Colors
  // =========================
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF4A4A4A);
  static const Color onPrimary = Colors.white;

  // =========================
  // 📦 UI Elements
  // =========================
  static const Color divider = Color(0xFFE6E2C3);
  static const Color border = Color(0xFFE6E6E6);
  static const Color chipUnselectedBg = Color(0xFFF5F5F5);
  static const Color chipUnselectedText = textSecondary;

  // =========================
  // 🚦 Status Colors
  // =========================
  static const Color error = Color(0xFFE57373);
  static const Color sale = Color(0xFFD32F2F);
  static const Color success = Color(0xFF81C784);
  static const Color quantityBg = Color(0xFFF1F8E9);
  static const Color starColor = Color(0xFFF7CFD8);
  static const Color tagLightBlue = Color(0xFFD1C4E9);
  static const Color tagDarkTeal = Color(0xFF311B92);

  // =========================
  // 💰 Business Logic Colors
  // =========================
  static const Color price = primary;
  static const Color freeShipping = success;

  // =========================
  // 🎴 Dynamic Card Colors (Unified to Light Yellow)
  // =========================
  static const List<Color> cardPalette = [
    Color(0xFFFEFBEA),
  ];

  /// Get color safely
  static Color getCardColor(int index) {
    return surface;
  }

  // =========================
  // 🔄 Legacy Mappings (For backward compatibility)
  // =========================
  static const Color primaryColor = primary;
  static const Color backgroundColor = background;
  static const Color priceColor = price;
  static const Color cardBackground = surface;
  static const Color lightpurple = primaryLight;
  static const Color cardBg = card;
  static const Color qtyBg = quantityBg;
  static const Color badgeSale = sale;
  static const Color removeRed = error;
  static const Color primaryText = textPrimary;
  static const Color secondaryText = textSecondary;
}

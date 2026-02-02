import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.3,
  );

  static const TextStyle description = TextStyle(
    fontSize: 13,
    color: AppColors.textSecondary,
    height: 1.4,
  );

  static const TextStyle price = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 0.5,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle bannerTitle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle priceOriginal = TextStyle(
    fontSize: 12,
    color: Colors.red,
    decoration: TextDecoration.lineThrough,
  );

  static const TextStyle priceDiscounted = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle priceMeta = TextStyle(
    fontSize: 13,
    color: AppColors.textSecondary,
    decoration: TextDecoration.underline
  );
}

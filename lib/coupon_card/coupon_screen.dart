import 'package:couponpage/constans/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/coupon_card.dart';
import '../models/coupon_model.dart';
import '../constans/text_styles.dart';
import '../utils/snackbars.dart';

class CouponsScreen extends StatelessWidget {
  const CouponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CouponModel> coupons = [
      CouponModel(
        price: "₹6,900",
        title: "LONGSTAY",
        description:
            "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
      ),
      CouponModel(
        price: "₹6,900",
        title: "LONGSTAY",
        description:
            "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
      ),
      CouponModel(
        price: "₹6,900",
        title: "LONGSTAY",
        description:
            "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
      ),
    ];

    final List<CouponModel> paymentOffers = [
      CouponModel(
        price: "₹6,900",
        title: "LONGSTAY",
        description:
            "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: Row(
            children: [
              Image.asset("assets/logo/logo.png", width: 120, height: 120),
              const SizedBox(width: 6),
              // TODO: Add the logo text color -Its like Linear Gradient so that i used logo.png ..if want in text, change here
              // const Text(
              //   "SPACEZ",
              //   style: TextStyle(
              //     fontFamily: 'BrandFont',
              //     fontSize: 18,
              //     fontWeight: FontWeight.w500,
              //     letterSpacing: 1.2,
              //     color: Color.fromARGB(221, 185, 65, 65),
              //   ),
              // ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(Icons.menu, color: AppColors.primary),
              onPressed: () {
                showSuccessSnackBar(context, "Menu coming soon");
              },
            ),
          ),
        ],

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Column(
              children: [
                Divider(
                  color: const Color.fromARGB(255, 231, 230, 230),
                  height: 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 11.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black45,
                        ),
                        onPressed: () {
                          Navigator.maybePop(context);
                        },
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Coupons",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          // Coupons list
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: coupons.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return CouponCard(coupon: coupons[index]);
            },
          ),

          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.only(left: 7.0, top: 10.0),
            child: Text("Payment offers:", style: AppTextStyles.sectionTitle),
          ),

          const SizedBox(height: 12),

          // Payment offers list
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: paymentOffers.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return CouponCard(coupon: paymentOffers[index]);
            },
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Green promo banner
          GestureDetector(
            onTap: () =>
                showSuccessSnackBar(context, "Exclusive rewards unlocked!"),
            child: Container(
              width: double.infinity,
              color: AppColors.promoGreen,
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/offer_filled.png",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Book now & Unlock exclusive rewards!",
                      style: AppTextStyles.bannerTitle,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Price
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            child: SafeArea(
              top: false,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("₹19,500", style: AppTextStyles.priceOriginal),
                            const SizedBox(width: 6),
                            Text(
                              "₹16,000",
                              style: AppTextStyles.priceDiscounted,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "for 2 nights",
                              style: AppTextStyles.priceMeta,
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              "24 Apr - 26 Apr | 8 guests",
                              style: AppTextStyles.priceMeta,
                            ),
                            SizedBox(width: 5),
                            Image.asset(
                              "assets/images/edit.png",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      ),
                      onPressed: () {
                        showSuccessSnackBar(
                          context,
                          "Reservation successful (demo only)",
                        );
                      },
                      child: const Text(
                        "Reserve",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

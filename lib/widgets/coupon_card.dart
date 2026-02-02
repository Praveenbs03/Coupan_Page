import 'package:flutter/material.dart';
import '../models/coupon_model.dart';
import '../constans/colors.dart';
import '../constans/text_styles.dart';
import '../utils/snackbars.dart';


class CouponCard extends StatelessWidget {
  final CouponModel coupon;

  const CouponCard({super.key, required this.coupon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 245, 239, 236),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
      child: Row(
        children: [
          ClipPath(
            child: Container(
              width: 60,
              height: 170,
              color: AppColors.primary,
              alignment: Alignment.center,
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(coupon.price, style: AppTextStyles.price),
              ),
            ),
          ),
          VerticalDashedDivider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(coupon.title, style: AppTextStyles.title),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          showSuccessSnackBar(
                            context,
                            "Coupon applied successfully",
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/coupon_bold.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "Apply",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 128, 53, 26),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(coupon.description, style: AppTextStyles.description),
                  const SizedBox(height: 8),

                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black12,
                  ),
                  const SizedBox(height: 6),
                  TextButton(
                    onPressed: () {
                      showSuccessSnackBar(context, "More details coming soon");
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      "Read more",
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
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
//Vertical Divider
class VerticalDashedDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double dashHeight;
  final double dashSpace;

  const VerticalDashedDivider({
    super.key,
    this.height = 170,
    this.color = const Color.fromARGB(255, 134, 63, 38),
    this.dashHeight = 6,
    this.dashSpace = 4,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dashCount = (constraints.maxHeight / (dashHeight + dashSpace))
              .floor();

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: 2,
                height: dashHeight,
                child: DecoratedBox(decoration: BoxDecoration(color: color)),
              );
            }),
          );
        },
      ),
    );
  }
}

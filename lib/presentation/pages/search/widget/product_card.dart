import 'package:flutter/material.dart';
import 'package:qtec_task_app/core/const/ui_helper.dart';
import 'package:qtec_task_app/data/models/product_model.dart';
import 'package:qtec_task_app/presentation/widgets/gradient_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ProductCardBack(
          product: product,
        ),
        const Positioned(
          bottom: 0,
          child: ProductCardFront(),
        ),
      ],
    );
  }
}

class ProductCardBack extends StatelessWidget {
  const ProductCardBack({Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    TextTheme textTheme = themeData.textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              product.image,
              height: 117,
              fit: BoxFit.fill,
            ),
            Text(
              product.productName,
              textAlign: TextAlign.center,
              style: textTheme.bodyText2,
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'ক্রয়',
                        style: textTheme.bodyText2!.copyWith(fontSize: 8, fontWeight: FontWeight.w400),
                      ),
                      const WidgetSpan(child: kHorizontalSpaceXS),
                      TextSpan(
                        text: '৳ 20.00',
                        style: textTheme.headline2!.copyWith(
                          color: themeData.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(child: kHorizontalSpaceS),
                Text(
                  '৳ 22.00',
                  style: textTheme.bodyText2!.copyWith(
                    fontSize: 12,
                    color: themeData.primaryColor,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'বিক্রয়',
                        style: textTheme.bodyText2!.copyWith(fontSize: 8, fontWeight: FontWeight.w400),
                      ),
                      const WidgetSpan(child: kHorizontalSpaceXS),
                      TextSpan(
                        text: '৳ 25.00',
                        style: textTheme.headline2!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(child: kHorizontalSpaceS),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'লাভ',
                        style: textTheme.bodyText2!.copyWith(fontSize: 8, fontWeight: FontWeight.w400),
                      ),
                      const WidgetSpan(child: kHorizontalSpaceXS),
                      TextSpan(
                        text: '৳ 5.00',
                        style: textTheme.headline2!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCardFront extends StatelessWidget {
  const ProductCardFront({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevetedButton(
      onPressed: () {},
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}

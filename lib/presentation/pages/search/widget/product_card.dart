import 'package:flutter/material.dart';
import 'package:qtec_task_app/core/const/ui_helper.dart';
import 'package:qtec_task_app/data/models/product_model.dart';
import 'package:qtec_task_app/presentation/widgets/gradient_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    TextTheme textTheme = themeData.textTheme;
    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          //  whole card with tranparent background

          Container(
            height: size.height / 2.75,
            color: Colors.transparent,
          ),

          //white background

          Container(
            height: size.height / 2.75 - 15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                            text: '৳ ${product.currentPrice}',
                            style: textTheme.headline2!.copyWith(
                              color: themeData.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(child: kHorizontalSpaceS),
                    Text(
                      '৳ ${product.currentPrice + 10}',
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
                            text: '৳ ${product.sellingPrice}',
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
                            text: '৳ ${product.profit}',
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
          Positioned(
            bottom: 0,
            child: product.stock == 0
                ? Container()
                : CustomElevetedButton(
                    onPressed: () {},
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
          ),

          // no stock button

          Positioned(
            top: 0,
            right: 8,
            child: product.stock != 0
                ? Container()
                : ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        // padding: EdgeInsets.zero,
                        elevation: 0,
                        backgroundColor: const Color(0xFFFFCCCC),
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    child: Text(
                      'স্টকে নেই',
                      style: textTheme.bodyText2!.copyWith(
                        color: const Color(0xFFC62828),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

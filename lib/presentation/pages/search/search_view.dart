import 'package:flutter/material.dart';
import 'package:qtec_task_app/core/const/assets_value.dart';
import 'package:qtec_task_app/presentation/pages/search/widget/product_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(64),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
                    suffixIcon: WebsafeSvg.asset(
                      kAssetSearchIcon,
                      height: 16,
                      width: 16,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            itemCount: 52,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemBuilder: (context, index) => const ProductCard(),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           TextFormField(
    //             decoration: InputDecoration(
    //               hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
    //               suffixIcon: WebsafeSvg.asset(
    //                 kAssetSearchIcon,
    //                 height: 16,
    //                 width: 16,
    //                 fit: BoxFit.scaleDown,
    //               ),
    //             ),
    //           ),
    //           kVerticalSpaceL,
    //           ListView(
    //             children: [],
    //           ),
    //           GridView.builder(
    //             shrinkWrap: true,
    //             itemCount: 20,
    //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 2,
    //               crossAxisSpacing: 16,
    //               mainAxisSpacing: 16,
    //             ),
    //             itemBuilder: (context, index) => Text('data'),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

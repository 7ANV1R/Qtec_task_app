import 'package:flutter/material.dart';
import 'package:qtec_task_app/core/const/assets_value.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
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
          ],
        ),
      ),
    );
  }
}

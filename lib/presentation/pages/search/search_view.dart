import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec_task_app/core/const/assets_value.dart';
import 'package:qtec_task_app/logic/cubits/search/search_cubit.dart';
import 'package:qtec_task_app/presentation/pages/search/widget/product_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late final TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(size.height * 0.05),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: TextFormField(
                  controller: textEditingController,
                  onFieldSubmitted: (value) {
                    context.read<SearchCubit>().search(query: textEditingController.text);
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
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
        body: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchInitial) {
              return const Center(
                child: Text('Search Product'),
              );
            }
            if (state is SearchLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            if (state is SearchReasulEmpty) {
              return const Center(
                child: Text('No result found.'),
              );
            }

            if (state is SearchResultLoaded) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  itemCount: state.productModel.length,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: size.height / 2.75,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) => ProductCard(
                    product: state.productModel[index],
                  ),
                ),
              );
            }
            return const Center(
              child: Text('Something went wrong'),
            );
          },
        ),
      ),
    );
  }
}

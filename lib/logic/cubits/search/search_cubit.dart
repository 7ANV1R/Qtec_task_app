import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:qtec_task_app/data/data_provider/search_result_provider.dart';
import 'package:qtec_task_app/data/models/product_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  Future<void> search({required String query}) async {
    emit(SearchLoading());
    SearchResultApiImp searchResultApiImp = SearchResultApiImp();

    final data = await searchResultApiImp.getSearchResult(query: query);
    // log(response);

    final List<ProductModel> searchResult = List<ProductModel>.from(data.map(
      (e) => ProductModel.fromJson(e as Map<String, dynamic>),
    )).toList();

    if (searchResult.isEmpty) {
      log('empty');
      emit(const SearchResultLoaded(<ProductModel>[]));
    } else {
      emit(SearchResultLoaded(searchResult));
    }
  }
}

part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchResultLoaded extends SearchState {
  final List<ProductModel> productModel;

  const SearchResultLoaded(this.productModel);

  @override
  List<Object> get props => [productModel];
}

class SearchReasulEmpty extends SearchState {}

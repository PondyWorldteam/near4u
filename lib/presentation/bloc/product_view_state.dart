part of 'product_view_bloc.dart';

enum ProductViewStatus { loading, loaded, failed }

abstract class ProductViewState extends Equatable {
  const ProductViewState();

  @override
  List<Object?> get props => [];
}

class ProductViewInitial extends ProductViewState {}

class ProductViewValidate extends ProductViewState {
  final ProductViewStatus? productViewStatus;
  final int? selectedRowIndex;
  const ProductViewValidate({
    this.productViewStatus = ProductViewStatus.loading,
    this.selectedRowIndex = 0,
  });
  ProductViewValidate copyWith({
    ProductViewStatus? productViewStatus,
    int? selectedRowIndex,
  }) {
    return ProductViewValidate(
      productViewStatus: productViewStatus ?? this.productViewStatus,
      selectedRowIndex: selectedRowIndex ?? this.selectedRowIndex,
    );
  }

  @override
  List<Object?> get props => [productViewStatus, selectedRowIndex];
}

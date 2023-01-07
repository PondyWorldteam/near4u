import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_view_event.dart';
part 'product_view_state.dart';

class ProductViewBloc extends Bloc<ProductViewEvent, ProductViewValidate> {
  ProductViewBloc() : super(const ProductViewValidate()) {
    on<ProductRowViewSelectedEvent>(_onProductRowViewSelected);
  }
  _onProductRowViewSelected(ProductRowViewSelectedEvent event,
      Emitter<ProductViewValidate> emit) async {
    try {
      emit(state.copyWith(selectedRowIndex: event.selectedIndex));
      emit(state.copyWith(productViewStatus: ProductViewStatus.loaded));
    } catch (e) {
      emit(state.copyWith(productViewStatus: ProductViewStatus.failed));
    }
  }
}

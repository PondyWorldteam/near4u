part of 'product_view_bloc.dart';

abstract class ProductViewEvent extends Equatable {
  const ProductViewEvent();

  @override
  List<Object> get props => [];
}

class ProductRowViewSelectedEvent extends ProductViewEvent {
  final int selectedIndex;
  const ProductRowViewSelectedEvent(this.selectedIndex);
  @override
  List<Object> get props => [selectedIndex];
}

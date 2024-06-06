part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProducts() = _GetProducts;

  const factory ProductEvent.filterProduct({
    required String name,
  }) = _FilterProduct;
}

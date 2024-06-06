
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dokan_demo/data/repository/user_repository.dart';
import 'package:dokan_demo/domain/product_response/product_response.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

part 'product_bloc.g.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final UserRepository repository;

  ProductBloc(this.repository) : super(const ProductState()) {
    on<ProductEvent>((event, emit) async {
      await event.map(getProducts: (_GetProducts req) async {
        emit(state.copyWith(status: ProductStatus.loading));
       try{
         final String response = await rootBundle.loadString('assets/files/response.json');
         final data = await json.decode(response) as List<dynamic>;
         final List<ProductResponse> productList = [];
         for (var element in data) {
           final product = ProductResponse.fromJson(element);
           productList.add(product);
           print("product_data ->${product.images?.last.src}");
         }
         if(productList.isNotEmpty){
           emit(state.copyWith(
             products: productList,
             status: ProductStatus.success,
           ),);
         }else{
           emit(state.copyWith(
             errorMessage: "Empty product list",
             status: ProductStatus.error,
           ),);
         }
       }catch(e){
         emit(state.copyWith(
           errorMessage: "Fail to load product list",
           status: ProductStatus.error,
         ),);
       }

      }, filterProduct: (_FilterProduct req) {  });
    });
  }
}

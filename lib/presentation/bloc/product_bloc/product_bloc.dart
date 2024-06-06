
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dokan_demo/core/filter_type.dart';
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
    final List<ProductResponse> productList = [];
    on<ProductEvent>((event, emit) async {
      await event.map(getProducts: (_GetProducts req) async {
        emit(state.copyWith(status: ProductStatus.loading));
       try{
         final String response = await rootBundle.loadString('assets/files/response.json');
         final data = await json.decode(response) as List<dynamic>;
         productList.clear();
         for (var element in data) {
           final product = ProductResponse.fromJson(element);
           productList.add(product);
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

      }, filterProduct: (_FilterProduct req) async {
        emit(const ProductState());
        if(req.name == FilterType.newest.action){
          productList.sort((a,b){
            return b.dateModified!.compareTo(a.dateModified!);
          });
          emit(state.copyWith(
            products: productList,
            status: ProductStatus.success,
          ),);
        }
        if(req.name == FilterType.oldest.action){
          productList.sort((a,b){
            return a.dateModified!.compareTo(b.dateModified!);
          });
          emit(state.copyWith(
            products: productList,
            status: ProductStatus.success,
          ),);
        }

        if(req.name == FilterType.lowPrice.action){
          productList.sort((a,b){
            int startPrice = int.parse(a.price!);
            int comparePrice = int.parse(b.price!);
            return startPrice.compareTo(comparePrice);
          });
          emit(state.copyWith(
            products: productList,
            status: ProductStatus.success,
          ),);
        }
        if(req.name == FilterType.highestPrice.action){
          productList.sort((a,b){
            int startPrice = int.parse(b.price!);
            int comparePrice = int.parse(a.price!);
            return startPrice.compareTo(comparePrice);
          });
          emit(state.copyWith(
            products: productList,
            status: ProductStatus.success,
          ),);
        }

        if(req.name == FilterType.bestSelling.action){
          productList.sort((a,b){
            int startPrice = b.ratingCount!;
            int comparePrice = a.ratingCount!;
            return startPrice.compareTo(comparePrice);
          });
          emit(state.copyWith(
            products: productList,
            status: ProductStatus.success,
          ),);
        }
      });
    });
  }
}

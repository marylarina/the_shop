import 'dart:async';

import 'package:dio/dio.dart';
import 'package:final_project/domain/models/product_detail.dart';
import 'package:final_project/domain/url/catalog_url.dart';
import 'package:final_project/domain/entity/catalog/autocomplete_request.dart';
import 'package:final_project/domain/entity/catalog/autocomplete_response.dart';
import 'package:final_project/domain/entity/catalog/catalog_products_request.dart';
import 'package:final_project/domain/entity/catalog/catalog_products_response.dart';
import 'package:final_project/domain/entity/catalog/product_detail_request.dart';
import 'package:final_project/domain/entity/catalog/product_detail_response.dart';
import 'package:retrofit/http.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @POST(CatalogUrl.catalogProductDetail)
  Future<ProductDetailResponse> getProductDetail({
    @Body() required ProductDetailRequest request,
  });

  @POST(CatalogUrl.catalogProducts)
  Future<CatalogProductsResponse> getProducts({
    @Query('page') int? page,
    @Query('size') int? size,
    @Body() required CatalogProductsRequest request,
  });

  @GET(CatalogUrl.catalogProduct)
  Future<ProductDetail> getProduct({
    @Query('product_id') int? productId,
  });

  @POST(CatalogUrl.catalogAutocomplete)
  Future<AutocompleteResponse> getCatalogAutocomplete({
    @Body() required AutocompleteRequest request,
  });

}
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:final_project/domain/url/catalog_url.dart';
import 'package:final_project/domain/entity/catalog/catalog_products_response.dart';
import 'package:retrofit/http.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @POST(CatalogUrl.catalogProducts)
  Future<CatalogProductsResponse> getProducts();

}
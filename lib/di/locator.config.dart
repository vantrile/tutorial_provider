// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/app_model.dart' as _i3;
import '../base_service/client.dart' as _i4;
import '../domain/respositories/category_respositories.dart' as _i8;
import '../domain/respositories/product_repositories.dart' as _i7;
import '../domain/use_cases/get_category_use_case.dart' as _i9;
import '../domain/use_cases/get_product_use_case.dart' as _i10;
import '../services/categories_service.dart' as _i6;
import '../services/products_service.dart' as _i5;
import '../View/categories/categories_model.dart' as _i12;
import '../View/products/product_model.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AppModel>(() => _i3.AppModel());
  gh.singleton<_i4.Client>(_i4.Client());
  gh.factory<_i5.ProductService>(() => _i5.ProductService(get<_i4.Client>()));
  gh.factory<_i6.CategoryService>(() => _i6.CategoryService(get<_i4.Client>()));
  gh.factory<_i7.ProductRepositories>(
      () => _i7.ProductRepositories(get<_i5.ProductService>()));
  gh.factory<_i8.CategoryRepositories>(
      () => _i8.CategoryRepositories(get<_i6.CategoryService>()));
  gh.factory<_i9.GetCategoryUseCase>(
      () => _i9.GetCategoryUseCase(get<_i8.CategoryRepositories>()));
  gh.factory<_i10.GetProductUseCase>(() =>
      _i10.GetProductUseCase(repositories: get<_i7.ProductRepositories>()));
  gh.factory<_i11.ProductModel>(() =>
      _i11.ProductModel(getProductUseCase: get<_i10.GetProductUseCase>()));
  gh.factory<_i12.CategoriesModel>(() =>
      _i12.CategoriesModel(getCategoryUseCase: get<_i9.GetCategoryUseCase>()));
  return get;
}

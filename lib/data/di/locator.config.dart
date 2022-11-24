// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/app_model.dart' as _i3;
import '../../base_service/client.dart' as _i4;
import '../../services/categories_service.dart' as _i7;
import '../../services/products_service.dart' as _i6;
import '../../View/categories/categories_model.dart' as _i13;
import '../../View/master/master_model.dart' as _i5;
import '../../View/products/product_model.dart' as _i12;
import '../domain/respositories/category_respositories.dart' as _i9;
import '../domain/respositories/product_repositories.dart' as _i8;
import '../domain/use_cases/get_category_use_case.dart' as _i10;
import '../domain/use_cases/get_product_use_case.dart'
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
  gh.factory<_i5.MasterModel>(() => _i5.MasterModel());
  gh.factory<_i6.ProductService>(() => _i6.ProductService(get<_i4.Client>()));
  gh.factory<_i7.CategoryService>(() => _i7.CategoryService(get<_i4.Client>()));
  gh.factory<_i8.ProductRepositories>(
      () => _i8.ProductRepositories(get<_i6.ProductService>()));
  gh.factory<_i9.CategoryRepositories>(
      () => _i9.CategoryRepositories(get<_i7.CategoryService>()));
  gh.factory<_i10.GetCategoryUseCase>(
      () => _i10.GetCategoryUseCase(get<_i9.CategoryRepositories>()));
  gh.factory<_i11.GetProductUseCase>(() =>
      _i11.GetProductUseCase(repositories: get<_i8.ProductRepositories>()));
  gh.factory<_i12.ProductModel>(() =>
      _i12.ProductModel(getProductUseCase: get<_i11.GetProductUseCase>()));
  gh.factory<_i13.CategoriesModel>(() =>
      _i13.CategoriesModel(getCategoryUseCase: get<_i10.GetCategoryUseCase>()));
  return get;
}

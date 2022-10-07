// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/app_model.dart' as _i3;
import '../base_service/base_client.dart' as _i5;
import '../domain/respositories/category_respositories.dart' as _i7;
import '../domain/use_cases/get_category_use_case.dart' as _i8;
import '../services/categories_service.dart' as _i4;
import '../View/home/main_model.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i3.AppModel>(_i3.AppModel());
  gh.factory<_i4.CategoryService>(
      () => _i4.CategoryService(get<_i5.BaseClient>()));
  gh.factory<_i6.HomeModel>(() => _i6.HomeModel());
  gh.factory<_i7.CategoryRepositories>(
      () => _i7.CategoryRepositories(get<_i4.CategoryService>()));
  gh.factory<_i8.GetCategoryUseCase>(
      () => _i8.GetCategoryUseCase(get<_i7.CategoryRepositories>()));
  return get;
}

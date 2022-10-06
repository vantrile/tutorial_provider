// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../base_service/base_client.dart' as _i4;
import '../services/categories_service.dart' as _i3;
import '../View/main_model.dart' as _i5;
import '../View/next_view/next_model.dart'
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
  gh.factory<_i3.CategoryService>(
      () => _i3.CategoryService(get<_i4.BaseClient>()));
  gh.factory<_i5.MainModel>(() => _i5.MainModel());
  gh.factory<_i6.NextModel>(() => _i6.NextModel());
  return get;
}

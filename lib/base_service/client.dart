
import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/services/api_endpoint.dart';

import 'base_client.dart';

@singleton
class Client extends BaseClient{
  Client();
  @override
  // TODO: implement baseUrl
  String get baseUrl => BaseUrl.url;

}
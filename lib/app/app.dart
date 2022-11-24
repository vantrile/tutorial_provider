import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/View/categories/categories_model.dart';
import 'package:tutorial_provider/View/master/master_model.dart';
import 'package:tutorial_provider/app/app_model.dart';

import '../View/home/home_screen.dart';
import '../View/master/master_screen.dart';
import '../View/product_by_category/product.dart';
import '../data/di/locator.dart';
import '../res/routes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _model = locator<AppModel>();


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _model),
        ValueListenableProvider.value(value: _model.countShopping),
        ValueListenableProvider.value(value: _model.showProgressDialog),

      ],
      child: Consumer<AppModel>(builder: (context, model, _) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value:
              SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.red),
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp(
              title: "Sume App",
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.root,
              onGenerateRoute: getRoute,
              builder: (BuildContext context, Widget? child) {
                return Stack(
                  children: [
                    MediaQuery(
                        data:
                            MediaQuery.of(context).copyWith(textScaleFactor: 1),
                        child: child ?? const SizedBox()),
                    Consumer<ProgressDialogState>(
                      builder: (context, state, child) => Visibility(
                        visible: state.isShow,
                        child: Container(
                          color: Colors.white.withOpacity(0.9),
                          child: const Center(
                            child: Text("Processing...",
                                style: TextStyle(color: Colors.red)),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

Route<dynamic> getRoute(RouteSettings settings) {
  final arguments = settings.arguments;
  switch (settings.name) {
    case Routes.root:
      return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.root),
          builder: (_) => const MasterScreen());
    case Routes.product:
      final args = arguments as ProductArgs;
      return MaterialPageRoute(
        builder: (_) => ProductScreen(args: args),
        settings: const RouteSettings(name: Routes.product),
      );

    default:
      throw Exception("Route ${settings.name} is not defined");
  }
}

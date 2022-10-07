import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/app/app_model.dart';
import 'package:tutorial_provider/di/locator.dart';

import '../View/home/home_screen.dart';
import '../View/product_by_category/product.dart';
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
      ],
      child: Consumer<AppModel>(builder: (context, model, _) {
        return MaterialApp(
          title: "Sume App",
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.root,
          onGenerateRoute: getRoute,
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return Stack(
              children: [
                MediaQuery(
                  data: data.copyWith(textScaleFactor: 1),
                  child: child ?? const SizedBox(),
                ),
                // Consumer<ProgressDialogState>(
                //   builder: (context, state, child) => Visibility(
                //     visible: state.isShow,
                //     child: Container(
                //       color: Colors.grey,
                //       child: const Center(
                //         child: Text("Center String"),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            );
          },
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
          builder: (_) => const MyHomePage());
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

import 'package:flutter_modular/flutter_modular.dart';
import 'package:playround/app/modules/login/login_module.dart';
import 'package:playround/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/login', module: LoginModule()),
  ];
}

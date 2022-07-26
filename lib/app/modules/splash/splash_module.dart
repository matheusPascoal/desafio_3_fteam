import 'package:flutter_modular/flutter_modular.dart';
import 'package:playround/app/modules/splash/splash_screen.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const SplashScreen()),
  ];
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:playround/app/modules/profile/profile_screen.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) {
      final name = args.data;
      return ProfileScreen(
        name: name,
      );
    }),
  ];
}

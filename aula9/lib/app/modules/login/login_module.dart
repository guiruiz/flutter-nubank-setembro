import 'package:aula9/app/modules/home/home_page.dart';
import 'package:aula9/app/modules/login/login_controller.dart';
import 'package:aula9/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => LoginController(auth: i()))];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, __) => LoginPage()),
        ModularRouter("/home", child: (_, __) => HomePage())
      ];
}

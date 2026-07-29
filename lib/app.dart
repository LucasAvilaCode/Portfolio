import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'app-container', [
      const Header(),
      main_([
        Router(routes: [
          Route(
            path: '/',
            title: 'Lucas Avila | Técnico Universitario en Programación Web',
            builder: (context, state) => const Home(),
          ),
        ]),
      ]),
      const Footer(),
    ]);
  }
}

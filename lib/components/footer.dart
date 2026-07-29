import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'footer-inner', [
        div(classes: 'logo', [
          i(classes: 'fa-solid fa-code', []),
          span([.text('Lucas')]),
          .text('Avila'),
        ]),
        p(classes: 'footer-text', [
          .text('© 2026 Lucas Cristian Avila Herrera. Todos los derechos reservados. Técnico Universitario en Programación Web (UNSJ).'),
        ]),
        div(classes: 'social-links', [
          a(
            href: 'https://github.com/LucasAvilaDev',
            target: Target.blank,
            classes: 'social-icon',
            attributes: {'aria-label': 'GitHub'},
            [i(classes: 'fa-brands fa-github', [])],
          ),
          a(
            href: 'https://linkedin.com/in/lucasavilacode',
            target: Target.blank,
            classes: 'social-icon',
            attributes: {'aria-label': 'LinkedIn'},
            [i(classes: 'fa-brands fa-linkedin-in', [])],
          ),
          a(
            href: 'mailto:lucasavilacode@gmail.com',
            classes: 'social-icon',
            attributes: {'aria-label': 'Email'},
            [i(classes: 'fa-solid fa-envelope', [])],
          ),
        ]),
      ]),
    ]);
  }
}

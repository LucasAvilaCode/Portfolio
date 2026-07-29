import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header(classes: 'site-header', [
      div(classes: 'header-inner', [
        a(href: '#inicio', classes: 'logo', [
          i(classes: 'fa-solid fa-code', []),
          span([.text('Lucas')]),
          .text('Avila'),
        ]),
        nav([
          ul(classes: 'nav-links', [
            li([a(href: '#inicio', classes: 'nav-link active', [.text('Inicio')])]),
            li([a(href: '#sobre-mi', classes: 'nav-link', [.text('Sobre mí')])]),
            li([a(href: '#experiencia', classes: 'nav-link', [.text('Experiencia & Educación')])]),
            li([a(href: '#habilidades', classes: 'nav-link', [.text('Habilidades')])]),
            li([a(href: '#proyectos', classes: 'nav-link', [.text('Proyectos')])]),
            li([a(href: '#contacto', classes: 'nav-link', [.text('Contacto')])]),
          ]),
        ]),
        a(href: '#contacto', classes: 'btn-primary', [
          i(classes: 'fa-solid fa-paper-plane', []),
          .text('Hablemos'),
        ]),
      ]),
    ]);
  }
}

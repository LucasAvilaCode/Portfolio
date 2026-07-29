import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'sobre-mi', classes: 'section-container', [
      div(classes: 'section-header', [
        div(classes: 'section-badge', [
          i(classes: 'fa-solid fa-user', []),
          .text('Sobre mí'),
        ]),
        h2(classes: 'section-title', [
          .text('Perfil '),
          span(classes: 'gradient-text', [.text('Profesional')]),
        ]),
        p(classes: 'section-subtitle', [
          .text(
            'Técnico Universitario en Programación Web (UNSJ) con sólida base académica en Backend, arquitectura de software y gestión de bases de datos.',
          ),
        ]),
      ]),
      div(classes: 'about-grid', [
        div(classes: 'about-text', [
          p([
            .text(
              'Graduado como Técnico Universitario en Programación Web (UNSJ) con una sólida base académica en desarrollo Backend. Durante mi formación he desarrollado habilidades avanzadas en ecosistemas .NET y Java, así como en la gestión de bases de datos SQL.',
            ),
          ]),
          p([
            .text(
              'Me considero una persona proactiva, con gran capacidad de aprendizaje y entusiasmo por iniciar mi trayectoria profesional en el sector TI, aportando soluciones técnicas eficientes, compromiso y resultados desde el primer día.',
            ),
          ]),
          p([
            .text(
              'Además del desarrollo end-to-end (ASP.NET Core, Java, Flutter, Angular, Supabase), cuento con experiencia práctica en soporte técnico de hardware/software, administración de sistemas Windows/Linux y liderazgo de equipos.',
            ),
          ]),
        ]),
        div(classes: 'stats-grid', [
          div(classes: 'glass-card stat-card', [
            div(classes: 'stat-number gradient-text', [.text('UNSJ')]),
            div(classes: 'stat-label', [.text('Graduado en Prog. Web')]),
          ]),
          div(classes: 'glass-card stat-card', [
            div(classes: 'stat-number gradient-text', [.text('.NET')]),
            div(classes: 'stat-label', [.text('Sólido Enfoque Backend')]),
          ]),
          div(classes: 'glass-card stat-card', [
            div(classes: 'stat-number gradient-text', [.text('SaaS')]),
            div(classes: 'stat-label', [.text('Flutter & Supabase App')]),
          ]),
          div(classes: 'glass-card stat-card', [
            div(classes: 'stat-number gradient-text', [.text('100%')]),
            div(classes: 'stat-label', [.text('Compromiso & Resultados')]),
          ]),
        ]),
      ]),
    ]);
  }
}

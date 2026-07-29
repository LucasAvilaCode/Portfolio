import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'inicio', classes: 'hero-section', [
      div(classes: 'section-container', [
        div(classes: 'hero-grid', [
          div([
            div(classes: 'hero-status', [
              div(classes: 'pulse-dot', []),
              .text('Disponible para oportunidades TI'),
            ]),
            h1(classes: 'hero-title', [
              .text('Hola, soy '),
              span(classes: 'gradient-text', [.text('Lucas Avila')]),
              .text('.'),
            ]),
            p(classes: 'hero-description', [
              .text(
                'Técnico Universitario en Programación Web (UNSJ) especializado en desarrollo Backend (.NET Core, Java, C#) y ecosistemas Web & Mobile (Flutter, Supabase, Angular). Proactivo y listo para aportar soluciones técnicas eficientes.',
              ),
            ]),
            div(classes: 'hero-actions', [
              a(href: '#proyectos', classes: 'btn-primary', [
                .text('Ver Proyectos'),
                i(classes: 'fa-solid fa-arrow-right', []),
              ]),
              a(href: '#contacto', classes: 'btn-secondary', [
                .text('Contactar'),
              ]),
            ]),
            div(classes: 'social-links', [
              a(
                href: 'https://github.com/LucasAvilaDev',
                target: Target.blank,
                classes: 'social-icon',
                attributes: {'aria-label': 'GitHub: LucasAvilaDev'},
                [i(classes: 'fa-brands fa-github', [])],
              ),
              a(
                href: 'https://linkedin.com/in/lucasavilacode',
                target: Target.blank,
                classes: 'social-icon',
                attributes: {'aria-label': 'LinkedIn: Lucas Avila'},
                [i(classes: 'fa-brands fa-linkedin-in', [])],
              ),
              a(
                href: 'mailto:lucasavilacode@gmail.com',
                classes: 'social-icon',
                attributes: {'aria-label': 'Email: lucasavilacode@gmail.com'},
                [i(classes: 'fa-solid fa-envelope', [])],
              ),
              a(
                href: 'https://wa.me/5492645305086',
                target: Target.blank,
                classes: 'social-icon',
                attributes: {'aria-label': 'WhatsApp: 2645305086'},
                [i(classes: 'fa-brands fa-whatsapp', [])],
              ),
            ]),
          ]),
          div(classes: 'hero-avatar-wrapper', [
            div(classes: 'hero-avatar-glow', []),
            img(
              src: 'images/avatar.jpg',
              alt: 'Lucas Cristian Avila Herrera - Técnico en Programación Web',
              classes: 'hero-avatar-img',
            ),
            div(classes: 'floating-tech-badge badge-1', [
              i(classes: 'fa-solid fa-code', styles: Styles(color: const Color('#3b82f6')), []),
              .text('Flutter'),
            ]),
            div(classes: 'floating-tech-badge badge-2', [
              i(classes: 'fa-solid fa-database', styles: Styles(color: const Color('#38bdf8')), []),
              .text('SQL & Supabase'),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}

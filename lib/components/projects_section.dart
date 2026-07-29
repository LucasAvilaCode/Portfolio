import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'proyectos', classes: 'section-container', [
      div(classes: 'section-header', [
        div(classes: 'section-badge', [
          i(classes: 'fa-solid fa-rocket', []),
          .text('Proyectos'),
        ]),
        h2(classes: 'section-title', [
          .text('Mis proyectos '),
          span(classes: 'gradient-text', [.text('destacados')]),
        ]),
        p(classes: 'section-subtitle', [
          .text(
            'Una selección de proyectos recientes en los que he trabajado, abarcando desarrollo web, aplicaciones móviles y dashboards.',
          ),
        ]),
      ]),
      div(classes: 'projects-grid', [
        // Project 1: Chameleon
        div(classes: 'glass-card project-card', [
          div(classes: 'project-img-wrapper', [
            img(
              src: 'images/chameleon.png',
              alt: 'Chameleon - SaaS de Gestión de Gimnasios',
              classes: 'project-img',
            ),
          ]),
          div(classes: 'project-body', [
            h3(classes: 'project-title', [.text('Chameleon | SaaS para Gestión de Gimnasios')]),
            p(classes: 'project-desc', [
              .text(
                'Desarrollo end-to-end de un SaaS escalable para la gestión de gimnasios (panel web administrativo + app móvil para socios). Arquitectura en Flutter acoplada a backend en Supabase (PostgreSQL) con Triggers, Stored Procedures y automatización de reservas. Despliegues mediante Firebase Hosting y Cloudflare.',
              ),
            ]),
            div(classes: 'project-tech', [
              span(classes: 'tech-badge', [.text('Flutter')]),
              span(classes: 'tech-badge', [.text('Supabase')]),
              span(classes: 'tech-badge', [.text('PostgreSQL')]),
              span(classes: 'tech-badge', [.text('Triggers & SP')]),
              span(classes: 'tech-badge', [.text('Firebase Hosting')]),
              span(classes: 'tech-badge', [.text('Cloudflare')]),
            ]),
            div(classes: 'project-links', [
              a(
                href: 'https://github.com/LucasAvilaDev',
                target: Target.blank,
                classes: 'project-link',
                [
                  i(classes: 'fa-brands fa-github', []),
                  .text('GitHub: LucasAvilaDev'),
                ],
              ),
            ]),
          ]),
        ]),

        // Project 2: CineHub
        div(classes: 'glass-card project-card', [
          div(classes: 'project-img-wrapper', [
            img(
              src: 'images/cinehub.png',
              alt: 'CineHub - Plataforma Web de Gestión',
              classes: 'project-img',
            ),
          ]),
          div(classes: 'project-body', [
            h3(classes: 'project-title', [.text('CineHub | Plataforma Web de Gestión')]),
            p(classes: 'project-desc', [
              .text(
                'Solución de software con arquitectura orientada a servicios. Persistencia híbrida usando MySQL para integridad transaccional y MongoDB para chats. Comunicación bidireccional en tiempo real con SignalR y seguridad con Microsoft Identity y JWT.',
              ),
            ]),
            div(classes: 'project-tech', [
              span(classes: 'tech-badge', [.text('ASP.NET Core')]),
              span(classes: 'tech-badge', [.text('Angular 19')]),
              span(classes: 'tech-badge', [.text('SignalR')]),
              span(classes: 'tech-badge', [.text('MySQL')]),
              span(classes: 'tech-badge', [.text('MongoDB')]),
              span(classes: 'tech-badge', [.text('JWT / Identity')]),
            ]),
            div(classes: 'project-links', [
              a(
                href: 'https://github.com/LucasAvilaCode/apiPelis',
                target: Target.blank,
                classes: 'project-link',
                [
                  i(classes: 'fa-brands fa-github', []),
                  .text('GitHub: LucasAvilaDev'),
                ],
              ),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}

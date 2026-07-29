import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ExperienceSection extends StatelessComponent {
  const ExperienceSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'experiencia', classes: 'section-container', [
      div(classes: 'section-header', [
        div(classes: 'section-badge', [
          i(classes: 'fa-solid fa-briefcase', []),
          .text('Trayectoria'),
        ]),
        h2(classes: 'section-title', [
          .text('Experiencia Laboral & '),
          span(classes: 'gradient-text', [.text('Formación')]),
        ]),
        p(classes: 'section-subtitle', [
          .text(
            'Mi recorrido profesional en desarrollo de software, liderazgo de equipos y formación universitaria.',
          ),
        ]),
      ]),
      div(classes: 'timeline-grid', [
        // Column 1: Experiencia Laboral
        div(classes: 'timeline-column', [
          div(classes: 'timeline-column-title', [
            i(classes: 'fa-solid fa-laptop-code', []),
            h3([.text('Experiencia Laboral')]),
          ]),

          // Job 1
          div(classes: 'glass-card timeline-card', [
            div(classes: 'timeline-header', [
              div([
                h4(classes: 'timeline-role', [.text('Lead Full Stack Developer')]),
                div(classes: 'timeline-org', [.text('Chameleon (SaaS)')]),
              ]),
              span(classes: 'timeline-period', [.text('2025 – Actualidad')]),
            ]),
            p(classes: 'timeline-desc', [
              .text(
                'Diseño de arquitectura y desarrollo end-to-end de una plataforma para gimnasios (App móvil y panel web administrativo). Implementación en Flutter y Supabase (PostgreSQL), gestionando reservas, control de acceso y planes híbridos. Actualmente en fase de pruebas de usuario (Lanzamiento: Q1 2027).',
              ),
            ]),
          ]),

          // Job 2
          div(classes: 'glass-card timeline-card', [
            div(classes: 'timeline-header', [
              div([
                h4(classes: 'timeline-role', [.text('Becario FCEFyN')]),
                div(classes: 'timeline-org', [.text('Universidad Nacional de San Juan')]),
              ]),
              span(classes: 'timeline-period', [.text('2024')]),
            ]),
            p(classes: 'timeline-desc', [
              .text(
                'Apoyo en prácticas profesionalizantes de estudiantes de secundaria. Guiar y supervisar a los alumnos en el desarrollo de actividades y aprendizaje inicial en carreras informáticas. Mantenimiento de Laboratorio.',
              ),
            ]),
          ]),

          // Job 3
          div(classes: 'glass-card timeline-card', [
            div(classes: 'timeline-header', [
              div([
                h4(classes: 'timeline-role', [.text('Liderazgo & Gestión de Equipos')]),
                div(classes: 'timeline-org', [.text('Gimnasio')]),
              ]),
              span(classes: 'timeline-period', [.text('2023 – Actualidad')]),
            ]),
            p(classes: 'timeline-desc', [
              .text(
                'Liderazgo de equipos y gestión de grupos, aplicando comunicación efectiva, metodologías de organización y resolución de problemas para el cumplimiento de objetivos.',
              ),
            ]),
          ]),

          // Job 4
          div(classes: 'glass-card timeline-card', [
            div(classes: 'timeline-header', [
              div([
                h4(classes: 'timeline-role', [.text('Asistencia Operativa y Soporte')]),
                div(classes: 'timeline-org', [.text('Congreso Latinoamericano de Ciencia y Tecnología')]),
              ]),
              span(classes: 'timeline-period', [.text('2023')]),
            ]),
            p(classes: 'timeline-desc', [
              .text(
                'Asistencia operativa y soporte organizativo en evento tecnológico de gran escala, demostrando adaptabilidad, trabajo bajo presión y vocación de servicio.',
              ),
            ]),
          ]),
        ]),

        // Column 2: Formación Académica
        div(classes: 'timeline-column', [
          div(classes: 'timeline-column-title', [
            i(classes: 'fa-solid fa-graduation-cap', []),
            h3([.text('Formación Académica')]),
          ]),

          // Edu 1
          div(classes: 'glass-card timeline-card', [
            div(classes: 'timeline-header', [
              div([
                h4(classes: 'timeline-role', [.text('Tecnicatura Universitaria en Programación Web')]),
                div(classes: 'timeline-org', [.text('Universidad Nacional de San Juan (UNSJ)')]),
              ]),
              span(classes: 'timeline-period', [.text('Finalizado, Dic 2025')]),
            ]),
            p(classes: 'timeline-desc', [
              .text(
                'Formación académica integral en programación backend (.NET, Java), frontend (HTML5, CSS3, JavaScript, Angular), redes de datos y gestión avanzada de bases de datos relacionales y no relacionales (SQL Server, MySQL, PostgreSQL, MongoDB).',
              ),
            ]),
          ]),

          // Edu 2
          div(classes: 'glass-card timeline-card', [
            div(classes: 'timeline-header', [
              div([
                h4(classes: 'timeline-role', [.text('Profesor de Educación Física')]),
                div(classes: 'timeline-org', [.text('Instituto Superior de Educación Física')]),
              ]),
              span(classes: 'timeline-period', [.text('Finalizado, Sep 2019')]),
            ]),
            p(classes: 'timeline-desc', [
              .text(
                'Formación pedagógica enfocada en liderazgo, dinámica de grupos, planificación, disciplina y comunicación interpersonal efectiva.',
              ),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}

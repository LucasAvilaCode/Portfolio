import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'habilidades', classes: 'section-container', [
      div(classes: 'section-header', [
        div(classes: 'section-badge', [
          i(classes: 'fa-solid fa-code', []),
          .text('Habilidades'),
        ]),
        h2(classes: 'section-title', [
          .text('Mi stack tecnológico & '),
          span(classes: 'gradient-text', [.text('competencias')]),
        ]),
        p(classes: 'section-subtitle', [
          .text(
            'Herramientas y tecnologías que utilizo día a día para construir productos digitales de alta calidad.',
          ),
        ]),
      ]),
      div(classes: 'skills-grid', [
        // Lenguajes
        div(classes: 'glass-card skill-category-card', [
          div(classes: 'category-header', [
            div(classes: 'category-icon', [i(classes: 'fa-solid fa-code', [])]),
            h3([.text('Lenguajes de Programación')]),
          ]),
          div(classes: 'skill-list', [
            _buildSkillItem('fa-solid fa-code', 'C# (.NET Core)'),
            _buildSkillItem('fa-brands fa-java', 'Java (Jakarta EE)'),
            _buildSkillItem('fa-brands fa-python', 'Python'),
            _buildSkillItem('fa-solid fa-bolt', 'Dart'),
          ]),
          div(classes: 'skill-tags', [
            div(classes: 'skill-tag', [.text('C# .NET Core')]),
            div(classes: 'skill-tag', [.text('Java Jakarta EE')]),
            div(classes: 'skill-tag', [.text('Python')]),
            div(classes: 'skill-tag', [.text('Dart')]),
          ]),
        ]),

        // Web & Frameworks
        div(classes: 'glass-card skill-category-card', [
          div(classes: 'category-header', [
            div(classes: 'category-icon', [i(classes: 'fa-solid fa-laptop-code', [])]),
            h3([.text('Desarrollo Web & Frameworks')]),
          ]),
          div(classes: 'skill-list', [
            _buildSkillItem('fa-solid fa-server', 'ASP.NET Core Web API'),
            _buildSkillItem('fa-brands fa-angular', 'Angular (Angular 19)'),
            _buildSkillItem('fa-solid fa-mobile-screen-button', 'Flutter (Web & Mobile)'),
            _buildSkillItem('fa-brands fa-html5', 'HTML5 & CSS3'),
          ]),
          div(classes: 'skill-tags', [
            div(classes: 'skill-tag', [.text('ASP.NET Core')]),
            div(classes: 'skill-tag', [.text('Angular 19')]),
            div(classes: 'skill-tag', [.text('Flutter')]),
            div(classes: 'skill-tag', [.text('HTML5/CSS3')]),
          ]),
        ]),

        // Bases de Datos
        div(classes: 'glass-card skill-category-card', [
          div(classes: 'category-header', [
            div(classes: 'category-icon', [i(classes: 'fa-solid fa-database', [])]),
            h3([.text('Bases de Datos & Cloud')]),
          ]),
          div(classes: 'skill-list', [
            _buildSkillItem('fa-solid fa-database', 'MySQL'),
            _buildSkillItem('fa-solid fa-cloud', 'PostgreSQL (Supabase)'),
            _buildSkillItem('fa-solid fa-leaf', 'MongoDB'),
            _buildSkillItem('fa-solid fa-gears', 'Triggers & Stored Procedures'),
          ]),
          div(classes: 'skill-tags', [
            div(classes: 'skill-tag', [.text('MySQL')]),
            div(classes: 'skill-tag', [.text('PostgreSQL')]),
            div(classes: 'skill-tag', [.text('Supabase')]),
            div(classes: 'skill-tag', [.text('MongoDB')]),
          ]),
        ]),

        // Herramientas & Soporte
        div(classes: 'glass-card skill-category-card', [
          div(classes: 'category-header', [
            div(classes: 'category-icon', [i(classes: 'fa-solid fa-screwdriver-wrench', [])]),
            h3([.text('Herramientas & Soporte')]),
          ]),
          div(classes: 'skill-list', [
            _buildSkillItem('fa-brands fa-github', 'Git & GitHub (LucasAvilaDev)'),
            _buildSkillItem('fa-brands fa-figma', 'Figma (UI/UX)'),
            _buildSkillItem('fa-solid fa-desktop', 'Mantenimiento Hardware & Software'),
            _buildSkillItem('fa-brands fa-linux', 'Entornos Windows & Linux'),
          ]),
          div(classes: 'skill-tags', [
            div(classes: 'skill-tag', [.text('Git / GitHub')]),
            div(classes: 'skill-tag', [.text('Figma')]),
            div(classes: 'skill-tag', [.text('Soporte Técnico')]),
            div(classes: 'skill-tag', [.text('Windows/Linux')]),
          ]),
        ]),

        // Competencias Clave
        div(classes: 'glass-card skill-category-card', [
          div(classes: 'category-header', [
            div(classes: 'category-icon', [i(classes: 'fa-solid fa-brain', [])]),
            h3([.text('Competencias Clave')]),
          ]),
          div(classes: 'skill-list', [
            _buildSkillItem('fa-solid fa-layer-group', 'Arquitectura MVC & MVVM'),
            _buildSkillItem('fa-solid fa-network-wired', 'APIs RESTful & SignalR'),
            _buildSkillItem('fa-solid fa-shield-halved', 'Seguridad Informática (JWT)'),
            _buildSkillItem('fa-solid fa-users', 'Liderazgo & Proactividad'),
          ]),
          div(classes: 'skill-tags', [
            div(classes: 'skill-tag', [.text('MVC / MVVM')]),
            div(classes: 'skill-tag', [.text('APIs RESTful')]),
            div(classes: 'skill-tag', [.text('SignalR')]),
            div(classes: 'skill-tag', [.text('JWT Security')]),
          ]),
        ]),
      ]),
    ]);
  }

  Component _buildSkillItem(String iconClass, String name) {
    return div(classes: 'skill-item', [
      div(classes: 'skill-item-icon', [
        i(classes: iconClass, []),
      ]),
      span(classes: 'skill-item-name', [.text(name)]),
    ]);
  }
}

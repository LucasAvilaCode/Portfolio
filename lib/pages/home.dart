import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/about_section.dart';
import '../components/contact_section.dart';
import '../components/experience_section.dart';
import '../components/hero.dart';
import '../components/projects_section.dart';
import '../components/skills_section.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      const HeroSection(),
      const AboutSection(),
      const ExperienceSection(),
      const SkillsSection(),
      const ProjectsSection(),
      const ContactSection(),
    ]);
  }
}

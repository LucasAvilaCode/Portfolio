import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class ContactSection extends StatefulComponent {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  bool isSubmitted = false;
  String name = '';
  String email = '';
  String subject = '';
  String message = '';

  void _handleSubmit(dynamic event) {
    event.preventDefault();
    if (name.isNotEmpty && email.isNotEmpty && message.isNotEmpty) {
      setState(() {
        isSubmitted = true;
      });
    }
  }

  @override
  Component build(BuildContext context) {
    return section(id: 'contacto', classes: 'section-container', [
      div(classes: 'section-header', [
        div(classes: 'section-badge', [
          i(classes: 'fa-solid fa-paper-plane', []),
          .text('Contacto'),
        ]),
        h2(classes: 'section-title', [
          .text('¿Tienes un proyecto en mente? '),
          span(classes: 'gradient-text', [.text('¡Hablemos!')]),
        ]),
        p(classes: 'section-subtitle', [
          .text(
            'Estoy disponible para trabajos freelance, oportunidades laborales a tiempo completo o colaboraciones.',
          ),
        ]),
      ]),
      div(classes: 'contact-grid', [
        // Contact Info Column
        div(classes: 'contact-info', [
          div(classes: 'glass-card contact-card', [
            div(classes: 'contact-icon', [i(classes: 'fa-solid fa-envelope', [])]),
            div(classes: 'contact-details', [
              h4([.text('Correo Electrónico')]),
              p([a(href: 'mailto:lucasavilacode@gmail.com', [.text('lucasavilacode@gmail.com')])]),
            ]),
          ]),
          div(classes: 'glass-card contact-card', [
            div(classes: 'contact-icon', [i(classes: 'fa-solid fa-phone', [])]),
            div(classes: 'contact-details', [
              h4([.text('Teléfono / WhatsApp')]),
              p([a(href: 'https://wa.me/5492645305086', target: Target.blank, [.text('2645305086')])]),
            ]),
          ]),
          div(classes: 'glass-card contact-card', [
            div(classes: 'contact-icon', [i(classes: 'fa-solid fa-location-dot', [])]),
            div(classes: 'contact-details', [
              h4([.text('Ubicación')]),
              p([.text('San Juan, Argentina')]),
            ]),
          ]),
          div(classes: 'glass-card contact-card', [
            div(classes: 'contact-icon', [i(classes: 'fa-brands fa-linkedin-in', [])]),
            div(classes: 'contact-details', [
              h4([.text('LinkedIn')]),
              p([a(href: 'https://linkedin.com/in/lucasavilacode', target: Target.blank, [.text('Lucas Avila')])]),
            ]),
          ]),
          div(classes: 'glass-card contact-card', [
            div(classes: 'contact-icon', [i(classes: 'fa-brands fa-github', [])]),
            div(classes: 'contact-details', [
              h4([.text('GitHub')]),
              p([a(href: 'https://github.com/LucasAvilaDev', target: Target.blank, [.text('LucasAvilaDev (LucasTech)')])]),
            ]),
          ]),
        ]),

        // Contact Form Column
        div(classes: 'glass-card contact-form', [
          if (isSubmitted)
            div(
              styles: Styles(
                padding: .all(1.5.rem),
                radius: .circular(12.px),
                backgroundColor: const Color('rgba(16, 185, 129, 0.15)'),
                raw: {'border': '1px solid rgba(16, 185, 129, 0.3)', 'text-align': 'center'},
              ),
              [
                i(
                  classes: 'fa-solid fa-circle-check',
                  styles: Styles(
                    margin: .only(bottom: 0.5.rem),
                    color: const Color('#10b981'),
                    fontSize: 2.5.rem,
                  ),
                  [],
                ),
                h3(styles: Styles(margin: .only(bottom: 0.5.rem)), [.text('¡Mensaje enviado con éxito!')]),
                p(
                  styles: Styles(color: const Color('#94a3b8')),
                  [.text('Gracias por ponerte en contacto, $name. Te responderé lo antes posible.')],
                ),
              ],
            )
          else
            form(events: {'submit': _handleSubmit}, [
              div(classes: 'form-group', [
                label(htmlFor: 'name', [.text('Nombre completo')]),
                input(
                  type: InputType.text,
                  id: 'name',
                  classes: 'form-input',
                  attributes: {'placeholder': 'Ej: Juan Pérez', 'required': 'true'},
                  events: {
                    'input': (e) {
                      name = (e.target as dynamic).value ?? '';
                    }
                  },
                ),
              ]),
              div(classes: 'form-group', [
                label(htmlFor: 'email', [.text('Correo electrónico')]),
                input(
                  type: InputType.email,
                  id: 'email',
                  classes: 'form-input',
                  attributes: {'placeholder': 'ejemplo@correo.com', 'required': 'true'},
                  events: {
                    'input': (e) {
                      email = (e.target as dynamic).value ?? '';
                    }
                  },
                ),
              ]),
              div(classes: 'form-group', [
                label(htmlFor: 'subject', [.text('Asunto')]),
                input(
                  type: InputType.text,
                  id: 'subject',
                  classes: 'form-input',
                  attributes: {'placeholder': 'Propuesta de proyecto / Consulta'},
                  events: {
                    'input': (e) {
                      subject = (e.target as dynamic).value ?? '';
                    }
                  },
                ),
              ]),
              div(classes: 'form-group', [
                label(htmlFor: 'message', [.text('Mensaje')]),
                textarea(
                  id: 'message',
                  classes: 'form-textarea',
                  attributes: {'placeholder': 'Cuéntame sobre tu proyecto o consulta...', 'required': 'true'},
                  events: {
                    'input': (e) {
                      message = (e.target as dynamic).value ?? '';
                    }
                  },
                  [],
                ),
              ]),
              button(type: ButtonType.submit, classes: 'btn-primary', [
                i(classes: 'fa-solid fa-paper-plane', []),
                .text('Enviar Mensaje'),
              ]),
            ]),
        ]),
      ]),
    ]);
  }
}

// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:mi_portfolio/components/contact_section.dart'
    as _contact_section;
import 'package:mi_portfolio/constants/theme.dart' as _theme;
import 'package:mi_portfolio/pages/home.dart' as _home;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _contact_section.ContactSection:
        ClientTarget<_contact_section.ContactSection>('contact_section'),
    _home.Home: ClientTarget<_home.Home>('home'),
  },
  styles: () => [..._theme.styles],
);

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/viewmodel/register.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/views/widgets/auth_form_field.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  String _firstName = "";
  String _lastName = "";
  String _email = "";
  String _username = "";
  String _password = "";

  void _submit() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;

    _formKey.currentState!.save();

    final success = await ref
        .read(registerViewModelProvider.notifier)
        .register(_firstName, _lastName, _email, _username, _password);

    ScaffoldMessenger.of(context).clearSnackBars();
    if (success) {
      context.pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Registrierung fehlgeschlagen. Bitte versuche es erneut."),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 16,
                children: [
                  IconButton.filled(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.keyboard_arrow_left),
                  ),
                  Text(
                    "Registrieren",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      spacing: 16,
                      children: [
                        AuthFormField(
                          label: "Vorname",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Bitte gib deinen Vornamen ein.";
                            }

                            if (value.length < 3) {
                              return "Der Vorname muss mindestens 3 Zeichen lang sein.";
                            }

                            if (value.length > 50) {
                              return "Der Vorname darf maximal 50 Zeichen lang sein.";
                            }

                            return null;
                          },
                          onSaved: (val) => _firstName = val!,
                        ),
                        AuthFormField(
                          label: "Nachname",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Bitte gib deinen Nachnamen ein.";
                            }

                            if (value.length < 3) {
                              return "Der Nachname muss mindestens 3 Zeichen lang sein.";
                            }

                            if (value.length > 50) {
                              return "Der Nachname darf maximal 50 Zeichen lang sein.";
                            }

                            return null;
                          },
                          onSaved: (val) => _lastName = val!,
                        ),
                        AuthFormField(
                          label: "E-Mail",
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Bitte gib deine E-Mail-Adresse ein.";
                            }

                            if (!EmailValidator.validate(value)) {
                              return "Bitte gib eine gültige E-Mail-Adresse ein.";
                            }

                            return null;
                          },
                          onSaved: (val) => _email = val!,
                        ),
                        AuthFormField(
                          label: "Username",
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Bitte gib deinen Benutzernamen ein.";
                            }

                            if (value.length < 3) {
                              return "Der Benutzername muss mindestens 3 Zeichen lang sein.";
                            }

                            if (value.length > 50) {
                              return "Der Benutzername darf maximal 50 Zeichen lang sein.";
                            }

                            return null;
                          },
                          onSaved: (val) => _username = val!,
                        ),
                        AuthFormField(
                            label: "Passwort",
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "Bitte gib dein Passwort ein.";
                              }

                              if (value.length < 6) {
                                return "Das Passwort muss mindestens 6 Zeichen lang sein.";
                              }

                              return null;
                            },
                            onSaved: (val) => _password = val!),
                        SizedBox(
                          width: double.infinity,
                          child:
                              FilledButton(onPressed: _submit, child: const Text("Registrieren")),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

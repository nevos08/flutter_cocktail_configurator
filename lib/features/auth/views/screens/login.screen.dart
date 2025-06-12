import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/viewmodel/login.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/views/widgets/auth_form_field.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String _username = "";
  String _password = "";

  void _submit() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;

    _formKey.currentState!.save();

    final success = await ref.read(loginViewModelProvider.notifier).signIn(_username, _password);

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:
            Text(success ? "Du hast dich erfolgreich angemeldet." : "Ungültige Anmeldedaten.")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 16,
                    children: [
                      Text(
                        "Anmelden",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      AuthFormField(
                        label: "Username",
                        autocorrect: false,
                        validator: (newValue) {
                          if (newValue == null ||
                              newValue.trim().isEmpty ||
                              newValue.trim().length < 2) {
                            return "Ungültiger Benutzername";
                          }

                          return null;
                        },
                        onSaved: (newValue) {
                          _username = newValue!;
                        },
                      ),
                      AuthFormField(
                        label: "Passwort",
                        obscureText: true,
                        validator: (newValue) {
                          if (newValue == null ||
                              newValue.trim().isEmpty ||
                              newValue.trim().length < 4) {
                            return "Das Passwort ist mindestens 4 Zeichen lang.";
                          }

                          return null;
                        },
                        onSaved: (newValue) {
                          _password = newValue!;
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: _submit,
                          child: Text(
                            "Bestätigen".toUpperCase(),
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            context.pushNamed("register");
                          },
                          child: const Text(
                            "Du bist noch nicht registriert? Jetzt Account erstellen!",
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Unsere Besten",
                  style:
                      Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: PageView(
                    children: [
                      Image.asset(
                        "assets/images/cocktails/cocktail_mojito.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/cocktails/cocktail_whiskey_sour.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

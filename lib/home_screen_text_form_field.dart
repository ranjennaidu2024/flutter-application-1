import 'package:flutter/material.dart';

class HomeScreenTextFormField extends StatefulWidget {
  const HomeScreenTextFormField({super.key});

  @override
  State<HomeScreenTextFormField> createState() => _HomeScreenTextFormFieldState();
}

class _HomeScreenTextFormFieldState extends State<HomeScreenTextFormField> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) {
      return 'Please enter your email';
    }
    final emailPattern = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,}$');
    if (!emailPattern.hasMatch(v)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      FocusScope.of(context).unfocus();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email saved: ${_emailController.text.trim()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
                Text(
                  'Sign in',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  autofillHints: const [AutofillHints.email],
                  autocorrect: false,
                  validator: _validateEmail,
                  onFieldSubmitted: (_) => _onSubmit(),
                  decoration: const InputDecoration(
                    labelText: 'Enter your email',
                    hintText: 'you@example.com',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: _onSubmit,
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

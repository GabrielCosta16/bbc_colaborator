import 'package:bbc_colaborador/ui/login/widgets/email_input.dart';
import 'package:bbc_colaborador/ui/login/widgets/login_button.dart';
import 'package:bbc_colaborador/ui/login/widgets/password_input.dart';
import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cinza,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/alme_logo.png",
                height: 250,
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("Inicie a sessão"),
                    ),
                    EmailInput(tecEmail: TextEditingController()),
                    const SizedBox(
                      height: 24,
                    ),
                    PasswordInput(tecPass: TextEditingController()),
                    const SizedBox(
                      height: 36,
                    ),
                    const LoginButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

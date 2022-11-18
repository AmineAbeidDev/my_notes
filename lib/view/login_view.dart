import 'package:my_notes/constants/colors.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Colors.white,
          ),
          margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            cursorColor: mainColor,
            controller: _email,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.email,
                color: mainColor,
              ),
              hintText: 'email',
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Colors.white,
          ),
          margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            controller: _password,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.lock,
                color: mainColor,
              ),
              hintText: 'password',
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            fixedSize: const Size(220, 60),
            backgroundColor: buttonColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Login',
            style: TextStyle(
              color: mainColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

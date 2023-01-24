import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pishon/components/p_button.dart';
import 'package:pishon/components/p_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _userName = TextEditingController();
  bool passwordInvisible = true;
  bool confirmPasswordInvisible = true;

  RegExp regExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  String? _userNameErrorText;
  String? _emailErrorText;
  String? _passwordErrorText;
  String? _confirmPasswordErrorText;

  void validation() {
    if (_userName.text.isEmpty) {
      _userNameErrorText = 'User Name is Empty';
    } else if (_emailController.text.isEmpty) {
      _emailErrorText = 'e-mail is empty';
    } else if (!regExp.hasMatch(_emailController.text)) {
      _emailErrorText = 'Enter valid email';
    } else if (_passwordController.text.isEmpty) {
      _passwordErrorText = 'password is empty';
    } else if (_confirmPasswordController.text.isEmpty) {
      _confirmPasswordErrorText = 'Confirm Password is empty';
    } else if (_passwordController.text != _confirmPasswordController.text) {
      _confirmPasswordErrorText = 'Password does not match';
    } else if (_passwordController.text.length < 6) {
      _passwordErrorText = 'Password is too short';
    } else {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _userName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      child: Column(
        children: [
          Text(
            'Registration',
            style: GoogleFonts.robotoCondensed(
                textStyle: const TextStyle(fontSize: 25, letterSpacing: 1)),
          ),
          const SizedBox(
            height: 40,
          ),
          PTextField(
            prefixIcon: Icons.account_circle,
            controller: _userName,
            hintText: 'Name',
            errorText: _userNameErrorText,
          ),
          PTextField(
            prefixIcon: Icons.mail,
            controller: _emailController,
            hintText: 'E-mail',
            errorText: _emailErrorText,
          ),
          PTextField(
            prefixIcon: Icons.lock_outline,
            errorText: _passwordErrorText,
            controller: _passwordController,
            hintText: 'Enter Password',
            obscureText: passwordInvisible,
            suffixIcon:
                passwordInvisible ? Icons.visibility_off : Icons.visibility,
            onPressed: () {
              setState(() {
                passwordInvisible = !passwordInvisible;
              });
            },
          ),
          PTextField(
            prefixIcon: Icons.lock_outline,
            errorText: _confirmPasswordErrorText,
            controller: _confirmPasswordController,
            hintText: 'Confirm Password',
            obscureText: confirmPasswordInvisible,
            suffixIcon: confirmPasswordInvisible
                ? Icons.visibility_off
                : Icons.visibility,
            onPressed: () {
              setState(() {
                confirmPasswordInvisible = !confirmPasswordInvisible;
              });
            },
          ),
          PButton(
            text: 'Register',
            color: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              validation();
              setState(() {});
              print(_userName.text);
            },
          ),
        ],
      ),
    );
  }
}

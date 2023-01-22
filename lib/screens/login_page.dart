import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pishon/components/psm_button.dart';
import 'package:pishon/components/psm_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool invisible = true;

  @override
  void dispose() {
    _mailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Text(
            'Log In',
            style: GoogleFonts.robotoCondensed(
                textStyle: const TextStyle(fontSize: 25, letterSpacing: 1)),
          ),
          const SizedBox(
            height: 40,
          ),
          PSMTextField(
            textInputType: TextInputType.emailAddress,
            prefixIcon: Icons.mail,
            controller: _mailController,
            hintText: 'E-mail',
          ),
          const SizedBox(height: 10),
          PSMTextField(
            textInputType: TextInputType.text,
            obscureText: invisible,
            prefixIcon: Icons.lock,
            suffixIcon: invisible ? Icons.visibility_off : Icons.visibility,
            controller: _passwordController,
            hintText: 'Password',
            onPressed: () {
              setState(() {
                invisible = !invisible;
              });
            },
          ),
          const SizedBox(height: 10),
          PSMButton(
              text: 'Log In',
              color: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                print(_mailController.text);
                print(_passwordController.text);
                _mailController.clear();
                _passwordController.clear();
              }),
        ],
      ),
    );
  }
}

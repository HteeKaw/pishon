import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pishon/components/psm_button.dart';
import 'package:pishon/screens/login_page.dart';
import 'package:pishon/screens/register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/psm_logo.jpg',
                      ),
                      radius: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Enjoy your moment with PSM',
                        style: GoogleFonts.lobster(
                          textStyle: const TextStyle(
                            letterSpacing: 2,
                            fontSize: 26,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        PSMButton(
                          text: 'Register',
                          onPressed: () {
                            showModalBottomSheet(
                              elevation: 10,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) =>
                                  SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom,
                                  ),
                                  child: const RegisterPage(),
                                ),
                              ),
                            );
                          },
                        ),
                        PSMButton(
                          text: 'Log In',
                          onPressed: () {
                            showModalBottomSheet(
                              elevation: 10,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) =>
                                  SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom,
                                  ),
                                  child: const LoginPage(),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    Text(
                      'PS - Myanmar',
                      style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          letterSpacing: 1,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

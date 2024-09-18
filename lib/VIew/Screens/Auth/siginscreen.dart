import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/Controller/Services/authservices.dart';
import 'package:mindglow/VIew/Screens/Auth/loginscreen.dart';
import 'package:mindglow/Widgets/Showwidget/showdialoge.dart';
import 'package:mindglow/Widgets/authwidgets.dart';
import 'package:mindglow/Widgets/validations.dart';

class Siginscreen extends StatefulWidget {
  const Siginscreen({super.key});

  @override
  State<Siginscreen> createState() => _SiginscreenState();
}

class _SiginscreenState extends State<Siginscreen> {
  final mailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final Authservices authservices = Authservices();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          primarycolor,
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Form(
                    key: formkey,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Text('Mind Glow',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        const SizedBox(height: 10),
                        Text('''Let's Get Started!''',
                            style: GoogleFonts.getFont('Lato',
                                fontSize: 20, color: Colors.white70)),
                        Text('''Let's dive into your account''',
                            style: GoogleFonts.getFont('Lato',
                                fontSize: 10, color: Colors.white60)),
                        const SizedBox(height: 30),
                        Customformfield(
                            keybordtype: TextInputType.emailAddress,
                            validator: validateformail,
                            controller: mailcontroller,
                            hintext: 'email',
                            icon: const Icon(Icons.email_outlined)),
                        const SizedBox(height: 10),
                        Customformfield(
                            keybordtype: TextInputType.name,
                            validator: validateforpassword,
                            controller: passwordcontroller,
                            hintext: 'Password',
                            icon: const Icon(Icons.lock_outline)),
                        const SizedBox(height: 15),
                        Customsubmitbutton(
                            ontap: signup,
                            size: const Size(360, 60),
                            widget: const Customtext(
                                text: 'Sign up',
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        const Customtext(
                            text: 'By signing up, you agree to our'),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: const Customtext(
                                      text: 'Terms of services, ',
                                      color:
                                          Color.fromARGB(255, 22, 115, 191))),
                              const Customtext(text: 'and '),
                              GestureDetector(
                                  onTap: () {},
                                  child: const Customtext(
                                      text: 'Privacy Policy',
                                      color: Color.fromARGB(255, 22, 115, 191)))
                            ]),
                        const SizedBox(height: 40),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Customtext(
                                  text: 'Already have an account ?'),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Loginscreen()));
                                  },
                                  child: const Customtext(
                                      text: ' Log in',
                                      color: Color.fromARGB(255, 22, 115, 191)))
                            ])
                      ]),
                    )))));
  }

  signup() async {
    if (formkey.currentState!.validate()) {
      authservices.sigup(mailcontroller.text, passwordcontroller.text, context);
      await Future.delayed(const Duration(seconds: 10));
      mailcontroller.clear();
      passwordcontroller.clear();
    } else {
      showCustomSnackBar(
          bgcolor: primarycolor,
          msg: 'Fill all the feild',
          title: 'Check all the feild in here');
    }
  }

  // googlesignin() {
  //   authservices.googlesignin(context);
  // }
}

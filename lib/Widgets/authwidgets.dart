import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';

class Customtext extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontsize;
  final Color color;
  final TextOverflow overflow;
  const Customtext(
      {super.key,
      required this.text,
      this.fontWeight = FontWeight.normal,
      this.fontsize = 12,
      this.color = Colors.black,
      this.overflow = TextOverflow.visible});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.cabin(
          fontSize: fontsize, fontWeight: fontWeight, color: color),
    );
  }
}

class Customformfield extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String hintext;
  final Icon icon;
  final TextInputType keybordtype;
  const Customformfield(
      {super.key,
      required this.hintext,
      required this.icon,
      required this.controller,
      required this.validator,
      this.keybordtype = TextInputType.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          prefixIcon: icon,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: primarycolor),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
          label: Customtext(text: hintext, fontsize: 14),
        ),
      ),
    );
  }
}

class Customsubmitbutton extends StatelessWidget {
  final Function ontap;
  final Size size;
  final Widget widget;
  final Color color;

  const Customsubmitbutton(
      {super.key,
      required this.widget,
      required this.size,
      required this.ontap,
      this.color = primarycolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(color.withOpacity(.9)),
                minimumSize: WidgetStatePropertyAll(size)),
            onPressed: () {
              ontap();
            },
            child: widget));
  }
}

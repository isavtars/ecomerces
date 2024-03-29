import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/manager/constance/extensions/extension.dart';

class CustomeInputs extends StatefulWidget {
  const CustomeInputs({
    super.key,
    this.textEditingController,
    required this.hintText,
    required this.icons,
    this.validators,
    required this.textinputTypes,
    this.credentials = false,
    this.inputFormatters,
  });

  final TextEditingController? textEditingController;
  final String hintText;
  final IconData icons;
  final dynamic validators;
  final TextInputType textinputTypes;
  final bool credentials;
  final dynamic inputFormatters;

  @override
  State<CustomeInputs> createState() => _CustomeInputsState();
}

class _CustomeInputsState extends State<CustomeInputs> {
  bool obscureTextbool = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 0.11.h(context),
        maxWidth: 1.0.w(context),
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        obscureText: obscureTextbool == widget.credentials ? true : false,
        validator: widget.validators,
        controller: widget.textEditingController,
        keyboardType: widget.textinputTypes,
        decoration: InputDecoration(
            suffixIcon: widget.credentials
                ? Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: IconButton(
                      icon: obscureTextbool == widget.credentials
                          ? const FaIcon(FontAwesomeIcons.eye)
                          : const FaIcon(FontAwesomeIcons.eyeSlash),
                      onPressed: () {
                        setState(() {
                          obscureTextbool = !obscureTextbool;
                        });
                      },
                    ),
                  )
                : null,
            hintText: widget.hintText,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(0.007.toResponsive(context))))),
      ),
    );
  }
}

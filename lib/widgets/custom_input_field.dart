import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      autofocus: false,
      keyboardType: keyboardType,
      obscureText: obscureText,
      //initialValue: 'Jessenia Chuquimarca',
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //border: InputBorder(borderSide: ),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}

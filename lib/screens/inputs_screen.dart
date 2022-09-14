import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: const [
            CustomInputField(
              labelText: "Nombre",
              helperText: "Solo caracteres",
              hintText: "Nombre de usuario",
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: "Apellido",
              helperText: "Solo caracteres",
              hintText: "Apellido",
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: "Correo",
              helperText: "Solo caracteres",
              hintText: "Correo del usuario",
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: "Contraseña",
              helperText: "Solo caracteres",
              hintText: "Contraseña del usuario",
              obscureText: true,
            ),
          ]),
        )));
  }
}

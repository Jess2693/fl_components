import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ponemos referencia a los widgets
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jessenia',
      'last_name': 'Chuquimarca',
      'email': 'jessenia.chuquimarca2013b@gmail.com',
      'password': '1234567',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              CustomInputField(
                labelText: "Nombre",
                helperText: "Solo caracteres",
                hintText: "Nombre de usuario",
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: "Apellido",
                helperText: "Solo caracteres",
                hintText: "",
                formValues: formValues,
                formProperty: 'last_name',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: "Correo",
                helperText: "Solo caracteres",
                hintText: "Correo del usuario",
                keyboardType: TextInputType.emailAddress,
                formValues: formValues,
                formProperty: 'email',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: "Contraseña",
                helperText: "Solo caracteres",
                hintText: "Contraseña del usuario",
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField<String>(
                value: 'Admin',
                items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(
                      value: 'SuperAdmin', child: Text('SuperAdmin')),
                  DropdownMenuItem(
                      value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem(
                      value: 'Jr.Developer', child: Text('Jr.Developer')),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    //Minimiza el teclado al precionar
                    FocusScope.of(context).requestFocus(FocusNode());

                    //* imprimir valores de formulario
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  })
            ]),
          ),
        )));
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          );
        });
  }

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false, //cierra los dialogos con dar click afuera
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        // style: ElevatedButton.styleFrom(
        //   primary: Colors.green, elevation: 1, shape: const StadiumBorder()),
        onPressed: () => Platform.isAndroid
            ? displayDialog(context)
            : displayDialogIOS(context),
        // if (Platform.isAndroid) {
        //   displayDialog(context);
        // } else {
        //   displayDialogIOS(context);
        // }

        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Mostrar alerta',
            style: TextStyle(fontSize: 16),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}

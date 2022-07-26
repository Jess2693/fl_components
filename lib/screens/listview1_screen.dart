import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Ssuper Smash',
    'Final Fantasy'
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista'),
        ),
        body: ListView.(
          children: [
            ...options
                .map((e) => ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
            //ListTile(
            //  leading: Icon(Icons.access_alarm),
            //  title: Text('hlllk'),
            //)
          ],
        ));
  }
}

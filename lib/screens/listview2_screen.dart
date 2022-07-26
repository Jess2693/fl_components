import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Ssuper Smash',
    'Final Fantasy'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista 2'),
          elevation: 0,
          backgroundColor: Colors.indigoAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                    options[index],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            itemCount: options.length,
            separatorBuilder: (_, __) => const Divider()));
  }
}

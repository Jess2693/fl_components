import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jessenia Chuquimarca'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 7),
            child: CircleAvatar(
                backgroundColor: Colors.indigo[900], child: const Text('J CH')),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 110,
          backgroundImage: NetworkImage(
            'https://as1.ftcdn.net/v2/jpg/04/59/31/56/1000_F_459315639_vb1jObvUMCFcTbLW4iwfyIi6fkIGXNCQ.jpg',
          ),
        ),
      ),
    );
  }
}

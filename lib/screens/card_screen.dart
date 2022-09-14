import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-20.jpeg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            name: "Arbol",
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20sun%20beams%20belgium%20ardennes.jpg',
          )
        ],
      ),
    );
  }
}

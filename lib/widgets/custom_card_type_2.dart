import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key,
    required this.imageUrl, //uso obligatorio
    this.name, // no es obligatorio
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior:
          Clip.antiAlias, //adecuan el contenido a la forma de la tarjeta
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)), //el radio de los border
      elevation: 50,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //toma el tamaño de la pantalla
            height: 230, //el tamaño de la pantalla
            fit: BoxFit.cover, // hace que la imagen se adapte al widget
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                //child: Text(name!))
                child: Text(name ?? 'No Title'))
        ],
      ),
    );
  }
}

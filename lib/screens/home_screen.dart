import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: ((context, i) => ListTile(
                  //title: const Text("Nombre de ruta"),
                  title: Text(AppRoutes.menuOption[i].name),
                  leading: Icon(
                    AppRoutes.menuOption[i].icon,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.menuOption[i].route);

                    /* final route = MaterialPageRoute(
                      builder: (context) => const Listview2Screen(),
                    );
                    Navigator.push(context, route); */
                  },
                )),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOption.length));
  }
}

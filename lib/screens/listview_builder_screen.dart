import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10
  ]; // controla cuantos elementos estan renderizandose en el builder
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          (scrollController.position.maxScrollExtent)) {
        fetchData();
        //add5();
      }
      // print(
      //     '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));

    add5();
    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastid = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastid + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastIds = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastIds + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        //controla el padding de la pantalla
        context: context,
        removeTop: true, //parte superior
        removeBottom: true, //parte inferior
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              color: AppTheme.primary,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      width: double.infinity, //toma el ancho del disposituvo
                      height: 300,
                      fit: BoxFit
                          .cover, //toma todo el espacio, no hay espacios entre imágenes
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${imagesIds[index]}'));
                },
              ),
            ),
            if (isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const _LoadingIcon(),
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}

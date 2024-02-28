import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App ListView Arias",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: PaginaInico(),
    );
  }
}

class PaginaInico extends StatefulWidget {
  const PaginaInico({Key? key}) : super(key: key);

  @override
  State<PaginaInico> createState() => _PaginaInicoState();
}

class _PaginaInicoState extends State<PaginaInico> {
  List<String> images = [
    "assets/images/avatar1.jpg",
    "assets/images/avatar2.jpg",
    "assets/images/avatar3.jpg",
    "assets/images/avatar4.jpg",
    "assets/images/avatar5.jpg",
    "assets/images/avatar6.jpg",
    "assets/images/avatar7.jpg",
    "assets/images/avatar8.jpg",
    "assets/images/avatar9.jpg",
    "assets/images/avatar10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Demian Arias"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("This is title"),
                subtitle: Text("This is subtitle"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}

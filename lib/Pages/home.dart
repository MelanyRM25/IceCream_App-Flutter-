import 'package:flutter/material.dart';
import 'package:ice_cream/widgets/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 204, 225),
      body: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 70),
                child: Text("Explora nuestros \n sabores",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 34),
                child: MaterialButton(
                  shape: const CircleBorder(),
                  color: Colors.deepOrangeAccent,
                  padding: const EdgeInsets.all(10),
                  onPressed: () {},
                  child: const Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // número de elementos en cada fila
              //mainAxisSpacing: 10.0, // espaciado entre filas
              //crossAxisSpacing: 10.0, // espaciado entre columnas
            ),
            //padding: EdgeInsets.all(8.0), // relleno alrededor de la cuadrícula
            itemCount: image.length, // número total de elementos
            itemBuilder: (BuildContext context, int index) {
              return card(image[index], title[index], subtitle[index], context);
            },
          )), // child: ListView.builder(
          //   itemCount: image.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return card(
          //         image[index], title[index], subtitle[index], context);
          //   },
          // ),
        ],
      ),
    );
  }
}

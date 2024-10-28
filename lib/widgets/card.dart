import 'package:flutter/material.dart';

List<String> image = [
  'https://cdn.pixabay.com/photo/2021/06/01/07/03/sparrow-6300790_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/10/20/10/58/elephant-2870777_960_720.jpg',
  'https://cdn.pixabay.com/photo/2014/09/08/17/32/humming-bird-439364_960_720.jpg',
  'https://cdn.pixabay.com/photo/2018/05/03/22/34/lion-3372720_960_720.jpg'
];
List<String> title = ['Sparrow', 'Elephant', 'Humming Bird', 'Lion'];
List<String> subtitle = ['Ave', 'Mamifero', 'Ave', 'Mamifero'];
Widget card(String image, String title, String subtitle, BuildContext context) {
  return Container(
    width: double.infinity, // para que tome todo el ancho disponible
    height: 10, // altura fija
    child: Card(
      color: const Color.fromARGB(255, 174, 200, 143),
      child: Column(
        children: [
          Image.network(
            image,
            height: MediaQuery.of(context).size.width * (1 / 4),
            width: MediaQuery.of(context).size.width,
          ),
          Text(title),
          Text(subtitle),
        ],
      ),
    ),
  );

  // return Card(
  //   color: const Color.fromARGB(255, 174, 200, 143),
  //   elevation: 8.0,
  //   margin: EdgeInsets.all(5.0),
  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //   child: Column(
  //     children: [
  //       Container(
  //         padding: EdgeInsets.only(top: 20),
  //         child: Image.network(
  //           image,
  //           height: MediaQuery.of(context).size.width * (1 / 4),
  //           width: MediaQuery.of(context).size.width,
  //         ),
  //       ),
}

import 'package:flutter/material.dart';
//import "recipe.dart";

class KategoriItem extends StatelessWidget {
  final String id;
  final String title;
  final String images;
  const KategoriItem(
      {Key? key, required this.id, required this.title, required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/recipes', arguments: {
          'id': id,
          'title': title,
        });
      },
      child: Container(
        // child: Text(title),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(64, 0, 0, 0),
                blurRadius: 8,
                //spreadRadius: 1,
                offset: Offset(0, 5),
              )
            ],
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
            image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                image: NetworkImage(images))),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
                stops: [0.1, 0.6],
              )),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

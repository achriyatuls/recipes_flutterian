import 'package:flutter/material.dart';
import 'package:flutter_recipes/model/dummy_data.dart';
//import 'package:flutter_recipes/model/kategori.dart';
import 'package:flutter_recipes/model/kategori_item.dart';

class KategoriScreen extends StatelessWidget {
  const KategoriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 10 / 12),
      itemCount: dummyCategories.length,
      itemBuilder: (context, index) {
        final kategori = dummyCategories[index];
        print(kategori.title);
        return KategoriItem(
          id: kategori.id,
          title: kategori.title,
          images: kategori.images,
        );
      },
    );
  }
}

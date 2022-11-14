import 'package:flutter/material.dart';
import 'package:flutter_recipes/model/dummy_data.dart';
import 'package:flutter_recipes/model/produk.dart';

class Recipe extends StatelessWidget {
  const Recipe({
    Key? key,
    // required this.idCategory,
    // required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> argsRecipe =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    List<Produk> filteredProduk = dummy_produk.where((produk) {
      return produk.category.contains(argsRecipe['id']);
    }).toList();

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          argsRecipe['title'],
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: filteredProduk.length,
            itemBuilder: (context, index) {
              final produk = filteredProduk[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: EdgeInsets.only(bottom: 20),
                    height: 200,
                    width: 200,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(produk.imgAssets),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          produk.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(),
                        SizedBox(),
                        Text(
                          produk.price,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}

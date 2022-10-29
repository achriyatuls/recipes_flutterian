import 'package:flutter/material.dart';
import 'package:flutter_recipes/model/dummy_data.dart';
import 'package:flutter_recipes/model/food.dart';

class Recipe extends StatelessWidget {
  //final String idCategory;
  //final String title;

  const Recipe({
    Key? key,
    // required this.idCategory,
    // required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> argsRecipe =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    List<Food> filteredFood = dummy_food.where((food) {
      return food.category.contains(argsRecipe['id']);
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
            itemCount: filteredFood.length,
            itemBuilder: (context, index) {
              final food = filteredFood[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: EdgeInsets.only(bottom: 20),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(food.imageUrl),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(food.duration.toString()),
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

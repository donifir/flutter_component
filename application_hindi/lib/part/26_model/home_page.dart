import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_hindi/part/26_model/product_model.dart';

class HomePage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    List<ProductModel> dummyData = List.generate(
      100,
      (index) {
        return ProductModel(
            faker.food.restaurant(),
            "https://picsum.photos/id/${index}/200",
            10080 + Random().nextInt(100000),
            faker.lorem.sentence());
      },
    );

    return Scaffold(
        appBar: AppBar(title: const Text("Marketplace")),
        body: GridView.builder(
            padding:const EdgeInsets.all(10),
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return GridTile(
                  child: Image.network(dummyData[index].imageUrl),
                  footer: Container(
                      height: 80,
                      color: Colors.green.withOpacity(0.8),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              dummyData[index].judul,
                              maxLines: 1,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Rp ${dummyData[index].harga}",
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              dummyData[index].deskripsi,
                              maxLines: 2,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ])));
            }));
  }
}

import 'package:flutter/material.dart';

import '../models/product.model.dart';

import '../dummyData.dart';


class ProductsOverview extends StatelessWidget {
  final List<ProductModel> loadedProducts = dummyData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MyShop'),
        ),
        body: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: gridDelegate,
          itemBuilder: (_, i) {
            var url = loadedProducts[i].urlImage;
            var title = Text(loadedProducts[i].title);
            return GridTile(
              // header: title,
              child: Image.network(url, fit: BoxFit.cover),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                leading: IconButton(icon: Icon(Icons.favorite), onPressed: (){}),
                title: title,
                trailing: IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
              ),
            );
          },
          padding: ten,
        ));
  }

  final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10);
  final ten = const EdgeInsets.all(10);
}

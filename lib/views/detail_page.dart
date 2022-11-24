


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/products.dart';

class DetailPage extends StatelessWidget {

  Product product;
  DetailPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: CachedNetworkImage(
            imageUrl: product.image,
          ),

        ));
  }
}

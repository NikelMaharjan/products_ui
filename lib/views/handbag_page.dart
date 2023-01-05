

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop/models/products.dart';

import 'detail_page.dart';

class HandBagPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(

      body: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              childAspectRatio: 3/4.4
          ),
          itemBuilder: (context, index){
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Get.to(()=> DetailPage(products[index]), transition: Transition.leftToRight);
                  },
                  child: Container(
                    child: CachedNetworkImage(imageUrl: products[index].image),
                    height: h*0.25,
                    width: w*0.5,
                    decoration: BoxDecoration(
                      color: products[index].color,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),

                  ),
                ),
                SizedBox(height: 8,),
                Text(products[index].title, style: TextStyle(color: Colors.grey),),
                Text("\$ ${products[index].price.toString()}", style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            );
          }
      ),

    );
  }
}

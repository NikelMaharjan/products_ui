
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/products.dart';
import 'package:get/get.dart';
import 'package:shop/views/detail_page.dart';



class ShopPage extends StatelessWidget {
  List<String> category = ['Hand Bag', 'Jewellery' ,"Footwear", "Dressing"];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black,size: 30,),
        actions: [
          Icon(Icons.search, color: Colors.black,size: 30,),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
              child: Icon(Icons.shopping_bag_outlined, size: 30,color: Colors.black,)),
        ],
      ),
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Women", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Container(
                   height: h*0.04,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: category.map((e) {
                       return Container(
                           margin: EdgeInsets.only(right: 40),
                           child: Text(e, style: TextStyle(fontSize: 16),));
                     }).toList(),

                   ),
                 ),
                  Expanded(
                    child: buildGridView(h, w),
                  )

                ],
              ),
            )),
    );
  }

  Widget buildGridView(double h, double w) {
    return GridView.builder(
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
                  );
  }

}

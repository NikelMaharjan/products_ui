
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/products.dart';
import 'package:get/get.dart';
import 'package:shop/views/detail_page.dart';
import 'package:shop/views/handbag_page.dart';



class ShopPage extends StatelessWidget {
  List<String> category = ['Hand Bag', 'Jewellery' ,"Footwear", "Dressing"];
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Women", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(CupertinoIcons.back, color: Colors.black,size: 30,),
          actions: [
            Icon(Icons.search, color: Colors.black,size: 30,),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
                child: Icon(Icons.shopping_bag_outlined, size: 30,color: Colors.black,)),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [

              Tab(

                text: "Hand Bag",
              ),
              Tab(
                text: "Jewellery",
              ),

              Tab(


                text: "Foot Wear",
              ),
              Tab(
                text: "Dressing",
              )
            ],
          )

        ),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              children: [
                HandBagPage(),
                Center(child: Text("Nikel"),),
                Center(child: Text("Nikel"),),
                Center(child: Text("Nikel"),),

              ],
            ),
          )
      ),
    );
  }


}

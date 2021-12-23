import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoes_online/widgets/product_slider.dart';

class ProductDetailPage extends StatefulWidget {
  final String id;
  final String name;
  final String img;
  final String price;
  final List mulImg;
  final List sizes;
  const ProductDetailPage(
      {Key? key,
      required this.id,
      required this.name,
      required this.img,
      required this.price,
      required this.mulImg,
      required this.sizes})
      : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int activeSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                ),
              ], borderRadius: BorderRadius.circular(30), color: Colors.grey),
              child: Stack(
                children: [FadeInDown(child: const ProductSlider())],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

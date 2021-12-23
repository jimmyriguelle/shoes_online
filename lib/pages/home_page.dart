import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes_online/constant/product_data.dart';
import 'package:shoes_online/pages/product_detail_page.dart';
import 'package:shoes_online/theme/colors.dart';
import 'package:shoes_online/pages/cart_page.dart';
import 'package:shoes_online/pages/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/burger_icon.svg"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (_) => const MenuPage(),
                  ),
                );
              },
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/images/search_icon.svg"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/images/filter_icon.svg"),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CartPage(),
                      ),
                    );
                  },
                  icon: Container(
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Shoes",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: const <Widget>[
                    Text(
                      "Sort by",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
              children: List.generate(products.length, (index) {
            return FadeInDown(
              duration: Duration(milliseconds: 350 * index),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductDetailPage(
                                  id: products[index]['id'].toString(),
                                  name: products[index]['name'],
                                  img: products[index]['img'],
                                  price: products[index]['price'],
                                  mulImg: products[index]['mul_img'],
                                  sizes: products[index]['sizes'],
                                )));
                  },
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                      child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: grey,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1,
                                  color: black.withOpacity(0.1),
                                  blurRadius: 2)
                            ]),
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 280,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/" +
                                            products[index]['img']),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              products[index]['name'],
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "\$ " + products[index]['price'],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 25,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          right: 10,
                          child: IconButton(
                              icon: SvgPicture.asset(
                                  "assets/images/heart_icon.svg"),
                              onPressed: null))
                    ],
                  )),
                ),
              ),
            );
          }))
        ],
      ),
    );
  }
}

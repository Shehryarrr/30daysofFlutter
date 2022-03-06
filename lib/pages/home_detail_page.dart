
import 'package:flutter/material.dart';
import 'package:flutter_catlog/widgets/themes.dart';

import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
     bottomNavigationBar:  Container(
       color: Colors.white,
       child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                  "\$${catalog.price}".text.bold.xl4.red900.make(),
                  ElevatedButton(onPressed: () {},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
                  shape: MaterialStateProperty.all(const StadiumBorder(),
                  ),
                  ),
                   child: "Add to Cart".text.make(),
                  ),
                ],
              ).p32(),
     ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString(),
              ),
              child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                       catalog.name.text.xl2.color(MyTheme.darkBluish).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle!).bold.lg.make(),
              10.heightBox,
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer ".text.make(),
                    ],
                  ).p64(),
                              ),
                ),
              ),
          ],
        )
      ),
    );
  }
}

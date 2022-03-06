
import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:flutter_catlog/pages/home_detail_page.dart';
import 'package:flutter_catlog/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_catlog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeDetailPage(catalog: catalog,),
          ),
          ),
        child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

//CatalogItem//

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
    
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image,)),
          Expanded(child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBluish).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle!).make(),
              // 10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,

                children: [
                "\$${catalog.price}".text.bold.lg.make(),
                ElevatedButton(onPressed: () {},
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
                shape: MaterialStateProperty.all(const StadiumBorder(),
                ),
                ),
                 child: "Add to Cart".text.make(),
                ),
              ],
            ).pOnly(right: 8.0)
            ],
          ),
          ),
        ],
      ),
    ).white.rounded.square(100).make().py16();
  }
}

import 'package:flutter/material.dart';
import 'package:gsg_aziz2/assigment/model/brain.dart';

class ProductCard extends StatefulWidget {
  // String title;
  // String subTitle;
  // bool isFav;
  ProductBrain product;

  ProductCard({ProductBrain product});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    bool test = false;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            tileColor: Colors.blue,
            leading: CircleAvatar(
              backgroundColor: Colors.white,
            ),
            title: Text(widget.product.title),
            subtitle: Text(widget.product.subTitle),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  widget.product.isFav = !widget.product.isFav;
                });
              },
              icon: Icon(Icons.favorite),
              color: widget.product.isFav ? Colors.red : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

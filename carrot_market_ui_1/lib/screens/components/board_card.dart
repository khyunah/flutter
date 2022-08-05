import 'dart:ffi';

import 'package:carrot_market_ui_1/models/product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoardCard extends StatelessWidget {
  const BoardCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: NetworkImage(product.urlToImage),
              width: 120,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                '${product.address} * ${product.publishedAt}',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text('${product.price}',
                  style: Theme.of(context).textTheme.subtitle1),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              if (product.commentsCount != 0)
                Row(
                  children: [
                    Icon(FontAwesomeIcons.addressBook, size: 12),
                    SizedBox(width: 5),
                    Text(product.commentsCount.toString()),
                    SizedBox(width: 8),
                  ],
                ),
              if (product.heartCount != 0)
                Row(
                  children: [
                    Icon(FontAwesomeIcons.heart, size: 12),
                    SizedBox(width: 5),
                    Text(product.heartCount.toString()),
                    SizedBox(width: 5),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}

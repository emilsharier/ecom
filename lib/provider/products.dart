import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _item = [
    Product(
        id: 'p1',
        title: 'Nike shoe',
        brand: 'Nike',
        category: 'Shoe',
        description: 'shoe is available in all colors',
        price: 2599,
        imageUrl:
            'data:image/jpeg;base64,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'),
    Product(
      id: 'p2',
      title: 'Nike air',
      brand: 'Nike',
      category: 'Shoe',
      description: 'nike air is available only in black',
      price: 3600,
      imageUrl:
          'https://images.sportsdirect.com/images/products/21482440_l.jpg',
    ),
  ];

  List<Product> get item {
    return [..._item];
  }
}

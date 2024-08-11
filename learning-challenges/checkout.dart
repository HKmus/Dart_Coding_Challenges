import 'dart:io';

class Product {
  const Product({required this.id, required this.name, required this.price});

  final int id;
  final String name;
  final double price;

  String get initial => name.substring(0, 1);
  String get displayName => '($initial)${name.substring(1)}: \$$price';
}

class Item {
  const Item({required this.product, this.quantity = 1});
  final Product product;
  final int quantity;

  double get price => quantity * product.price;

  @override
  String toString() => '$quantity x ${product.name}: $price';
}

class Cart {
  Map<int, Item> _items = {};

  void addToCart(Product product) {
    final item = _items[product.id];
    if (item == null) {
      _items[product.id] = Item(product: product);
    } else {
      _items[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  double get total => _items.values
      .map((e) => e.price)
      .reduce((value, element) => value + element);

  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is empty';
    } else {
      return _items.values.map((item) => item.toString()).join('\n');
    }
  }
}

const allProducts = [
  Product(id: 1, name: 'apple', price: 2.3),
  Product(id: 2, name: 'banana', price: 4.6),
  Product(id: 3, name: 'grapes', price: 3.5),
  Product(id: 4, name: 'orange', price: 2.4),
  Product(id: 5, name: 'kiwi', price: 5.3),
];

void main() {
  final cart = Cart();
  while (true) {
    stdout.write(
        'what do you want to do? (v)iew items, (a)dd item, (c)heckout: ');
    final line = stdin.readLineSync();
    
    switch (line) {
      case 'v':
        // TODO
        break;
      case 'a':
        final product = chooseProduct();
        if (product != null) cart.addToCart(product);
        print('$cart\nTotal: \$${cart.total.toStringAsFixed(1)}');
        break;
      case 'c':
        // TODO
        break;
      default:
        print('Invalide input');
    }
  }
}

Product? chooseProduct() {
  final productList = allProducts.map((product) => product.displayName);
  productList.forEach((item) => print(item));
  stdout.write('Your choice: ');
  final input = stdin.readLineSync();

  for (var product in allProducts) {
    if (product.initial == input) {
      return product;
    }
  }
  print('Not found');
  return null;
}

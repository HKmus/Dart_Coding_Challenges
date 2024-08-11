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
  String toString() =>
      '$quantity x ${product.name}: ${price.toStringAsFixed(1)}';
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

  bool get isEmpty => _items.isEmpty;

  double get total => _items.values
      .map((e) => e.price)
      .reduce((value, element) => value + element);

  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is empty';
    } else {
      final itemizedList =
          _items.values.map((item) => item.toString()).join('\n');
      return '------\n$itemizedList\nTotal: \$${total.toStringAsFixed(1)}\n------';
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
  var isComplete = false;

  while (true) {
    stdout
        .write('what do you want to do? (v)iew cart, (a)dd item, (c)heckout: ');
    final line = stdin.readLineSync();

    switch (line) {
      case 'v':
        print(cart);
        break;
      case 'a':
        final product = chooseProduct();
        if (product != null) cart.addToCart(product);
        print(cart);
        break;
      case 'c':
        isComplete = checkout(cart);
        break;
      default:
        print('Invalide input');
    }

    if (isComplete) break;
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

bool checkout(Cart cart) {
  if (cart.isEmpty) {
    print('Cart is empty');
    return false;
  }
  print(cart);

  stdout.write('Enter payment amount: ');
  final amount = double.tryParse(stdin.readLineSync() ?? '');
  if (amount == null) {
    print('Please enter a valid amount.');
    return false;
  }

  if (amount >= cart.total) {
    print(
        'Paiment is successful. \nChange: ${(amount - cart.total).toStringAsFixed(2)}');
    return true;
  }
  print('Not enough cash.');
  return false;
}

void main() {
  const order = ['margherite', 'boise', 'indienne'];
  final total = orderPriceCalculator(order);

  print('total is: $total');
}

int orderPriceCalculator(List<String> order) {
  const pizzaPrices = <String, int>{
    'margherite': 350,
    'boise': 550,
    'vegitarienne': 450,
  };

  var total = 0;
  for (var item in order) {
    if (pizzaPrices[item] != null) {
      total += pizzaPrices[item]!;
    } else {
      print('$item is not on the menu.');
    }
  }

  return total;
}

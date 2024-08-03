void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };

  const addGrains = true;
  var shoppingList = {
    if(bananas>0) 'bananas': bananas, //collection-if
    if(apples>0) 'apples': apples,
    if(addGrains) ...grains, //spreads
  };

  print(shoppingList);
}

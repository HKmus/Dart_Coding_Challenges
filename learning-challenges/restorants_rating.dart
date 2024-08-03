void main() {
  final restaurants = [
    {
      'name': 'Unclewood',
      'speciality': 'Pizza',
      'ratings': [3.5, 4.2, 4.8],
    },
    {
      'name': 'Street22',
      'speciality': 'Sandwich',
      'ratings': [4.1, 3.9, 4.9],
    },
    {
      'name': 'ShackBurger',
      'speciality': 'Burger',
      'ratings': [2.1, 1.3, 2.8],
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var ratingsSum = 0.0;
    for (var i in ratings) {
      ratingsSum += i;
    }
    restaurant['AvgRating'] = (ratingsSum / ratings.length).toStringAsFixed(1);
  }

  print(restaurants);
}

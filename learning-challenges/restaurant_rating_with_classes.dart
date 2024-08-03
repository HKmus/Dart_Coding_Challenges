class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int get numberOfRatings => ratings.length;
  double calculateAvgRating() {
    return ratings.length != 0
        ? ratings.reduce((v, e) => v + e) / ratings.length
        : 0;
  }
}

void main() {
  final restaurant = Restaurant(
      name: 'unclewood', cuisine: 'italiene', ratings: [3.5, 4.2, 4.8]);
  print('Number of ratings is: ${restaurant.numberOfRatings}');
  print('Avg rating is: ${restaurant.calculateAvgRating().toStringAsFixed(1)}');
}

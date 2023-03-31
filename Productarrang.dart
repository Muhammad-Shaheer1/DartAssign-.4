//Create a list of maps, where each map represents a product with a name, price, and quantity. Sort the list by the total cost of each product (price x quantity) in descending order.
void main(List<String> args) {
  List<Map<String, dynamic>> product = [
    {'name': 'Shoes', 'price': 3500, 'quantity': 1},
    {'name': 'Rice soap', 'price': 500, 'quantity': 4},
    {'name': 'Iphone', 'price': 60000, 'quantity': 1},
    {'name': 'HardBall', 'price': 1200, 'quantity': 4},
    {'name': 'Football', 'price': 1000, 'quantity': 3},
  ];

  product.sort((a, b) =>
  (b['price'] * b['quantity'].compareTo(a['price'] * a['quantity'])));

  for (int i = 0; i < product.length; i++) {
    int sNumber = i + 1;
    String name = product[i]['name'];
    int price = product[i]['price'];
    int quantity = product[i]['quantity'];
    int totalCost = price * quantity;
    print("\n$sNumber. $name \n\tQuantity->$quantity x Price->$price = Total Cost->$totalCost");
  }
}
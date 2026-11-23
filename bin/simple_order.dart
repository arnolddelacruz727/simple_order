const menu = {'Adobo rice': 85.0, 'Iced tea': 35.0, 'Turon': 25.0};

class OrderItem {
  // class with name of OrderItem  which includes name,price and qty
  final String name; // final because erm so it can be set only once? not sure or it cannot be modified
  final double price;
  final int qty;

  OrderItem(this.name, this.price, this.qty);

  // use this to store the value passed on it and directly into the field name
  double get subtotal => price * qty; // use double because const menu is double
}
OrderItem? orderOf(String name, int qty) {
  // go through every key-value pair in the menu (like scores.entries in Listing 1.7)
  for (final entry in menu.entries) {
    if (entry.key == name) { // found the item we want
      return OrderItem(name, entry.value, qty); // entry.value is the price
    }
  }
  // the loop finished without a match, so the item isn't on the menu
  print('$name is not on the menu');
  return null; // that's why the return type is OrderItem?
}

// total adds up the subtotal of each item
// fold starts at 0.0 because (0.0 is a double and then for each item
double total(List<OrderItem> items) => items.fold(0.0,(sum, item) => sum + item.subtotal);
String line(String label, double amount) =>
    '$label  ${amount.toStringAsFixed(2)}';
// makes a receipt row with alligned collumns
void printReceipt(List<OrderItem> items, {String? customer}) {
  // print customer name
  if (customer == null) { // if and else statement if customer is equal to null it will print order for guest else it will pritn order for the customer
    print('Order for Guest');
  } else {
    print('Order for $customer');
  }
  // for each loop
  for (final item in items) {
    print(line('${item.qty} x ${item.name}', item.subtotal));
  }
  final sub = total(items);
  var disc = 0.0;
  print(line('Subtotal', sub));
  // discount logic (hardcoded 300 limit)
  if (sub >= 300) { // if statement
    disc = sub * 0.10;
    print(line('Discount 10%', -disc));
  }
  print(line('Total', sub - disc));
}

void main() {
  // test orders
  var first = [ // first order 3 Adobo rice, 1 Iced tea, 3 Turon (subtotal 365.00, so the discount applies)
    // the ! says "I'm sure this isn't null", since every item here is on the menu
    orderOf('Adobo rice', 3)!,
    orderOf('Iced tea', 1)!,
    orderOf('Turon', 3)!,
  ];
  printReceipt(first);
  print('');
  var second = [
    orderOf('Adobo rice', 1)!,
    orderOf('Iced tea', 1)!,
  ];
  printReceipt(second, customer: 'Ana');
}

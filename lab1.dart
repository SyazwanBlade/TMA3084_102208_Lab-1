import 'dart:io';


void main() {
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  // variable 'again' to run loop
  String again = "y";

  // WHILE LOOP: if again still == "y", it will not stop.
  while (again == "y") {
    print("Please enter your pizza size (small, medium, or large)");

    //stdin.readLineSync() to read user input.
    // readLineSync() can return null, so ! tells Dart there is a value so that tolowerCase() can be used.
    // toLowerCase() changes "Small" or "SMALL" into "small".
    String size = stdin.readLineSync()!.toLowerCase();
    print("How many pizzas do you want of $size?");

    // Read the quantity.
    // The user types text like "3", so int.parse() turns it into the number 3.
    int quantity = int.parse(stdin.readLineSync()!);

    // 'total' will store the payment. It starts at 0.
    int total = 0;

    // SWITCH: check the size and use the matching price.
    switch (size) {
      case "small":
        total = 5 * quantity;
        print("Total payment: $total USD");
        break; // exit the switch

      case "medium":
        total = 7 * quantity;
        print("Total payment: $total USD");
        break;

      case "large":
        total = 10 * quantity;
        print("Total payment: $total USD");
        break;

      // input validation
      default:
        print("Invalid pizza size");
    }
    // "y" = the loop runs again. Anything else = the loop stops.
    print("Do you want to order again? (y/n)");
    again = stdin.readLineSync()!;
    
  } // end of the while loop

  print("Thank you for your order!");
}
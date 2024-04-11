// Class representing an item, in this case, a wild animal
class Item {
  // File name of the image representing the item
  final String img;

  // Name of the item (e.g., Asian Elephant, Gibbon)
  final String name;

  // Description of the item, providing information about its characteristics, behavior, etc.
  final String descriptions;

  // Location where the item can be found (e.g., specific national park, region)
  final String location;

  // Constructor for the Item class
  Item({
    required this.img, // Required parameter representing the image file name
    required this.name, // Required parameter representing the name of the item
    required this.descriptions, // Required parameter representing the description of the item
    required this.location, // Required parameter representing the location of the item
  });
}

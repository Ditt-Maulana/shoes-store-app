class Product {
  final String id;
  final String name;
  final double price;
  final String image;
  final String category;
  final double rating;
  final int reviewCount;
  final String description;
  final double? discount;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.category,
    this.rating = 4.5,
    this.reviewCount = 0,
    this.description = '',
    this.discount,
  });

  double get discountedPrice {
    if (discount != null && discount! > 0) {
      return price * (1 - discount! / 100);
    }
    return price;
  }

  String get formattedPrice {
    return '\$${price.toStringAsFixed(2)}';
  }

  String get formattedDiscountedPrice {
    return '\$${discountedPrice.toStringAsFixed(2)}';
  }
}

// Sample data produk sepatu
final List<Product> sampleProducts = [
  Product(
    id: '1',
    name: 'Air Max 97',
    price: 120.99,
    image: 'lib/assets/product/Air Max 97.png',
    category: 'Running',
    rating: 4.8,
    reviewCount: 234,
    description: 'Comfortable running shoes with great cushioning',
    discount: 20,
  ),
  Product(
    id: '2',
    name: 'React Presto',
    price: 89.99,
    image: 'lib/assets/product/React Presto.png',
    category: 'Casual',
    rating: 4.6,
    reviewCount: 156,
    description: 'Stylish casual shoes for everyday wear',
    discount: 20,
  ),
  Product(
    id: '3',
    name: 'Air Max 98',
    price: 110.50,
    image: 'lib/assets/product/Air Max 98.png',
    category: 'Running',
    rating: 4.7,
    reviewCount: 189,
    description: 'Classic Air Max design with modern comfort',
  ),
  Product(
    id: '4',
    name: 'Air Presto',
    price: 95.00,
    image: 'lib/assets/product/Air Presto.png',
    category: 'Sports',
    rating: 4.5,
    reviewCount: 142,
    description: 'High-performance sports shoes',
  ),
  Product(
    id: '5',
    name: 'KD13 EP',
    price: 85.99,
    image: 'lib/assets/product/KD13 EP.png',
    category: 'Basketball',
    rating: 4.4,
    reviewCount: 98,
    description: 'Comfortable and stylish for any occasion',
  ),
  Product(
    id: '6',
    name: 'Air Max 97 Blue',
    price: 79.99,
    image: 'lib/assets/product/Air Max 97.png',
    category: 'Casual',
    rating: 4.3,
    reviewCount: 87,
    description: 'Lightweight and breathable design',
  ),
  Product(
    id: '7',
    name: 'React Presto Black',
    price: 150.00,
    image: 'lib/assets/product/React Presto.png',
    category: 'Casual',
    rating: 4.9,
    reviewCount: 456,
    description: 'Iconic basketball shoes',
  ),
  Product(
    id: '8',
    name: 'Air Presto Yellow',
    price: 130.00,
    image: 'lib/assets/product/Air Presto.png',
    category: 'Running',
    rating: 4.7,
    reviewCount: 312,
    description: 'Ultimate energy return for runners',
  ),
];


import 'package:flutter/material.dart';
import 'package:login_app/models/product.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final TextEditingController _searchController = TextEditingController();
  List<Product> _searchResults = [];
  bool _isSearching = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch(String query) {
    setState(() {
      _isSearching = query.isNotEmpty;
      if (query.isEmpty) {
        _searchResults = [];
      } else {
        _searchResults = sampleProducts
            .where((product) =>
                product.name.toLowerCase().contains(query.toLowerCase()) ||
                product.category.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Search Bar
                  TextField(
                    controller: _searchController,
                    onChanged: _performSearch,
                    decoration: InputDecoration(
                      hintText: 'Search for products...',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                _performSearch('');
                              },
                            )
                          : null,
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Search Results
            Expanded(
              child: _isSearching
                  ? _searchResults.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_off,
                                size: 80,
                                color: Colors.grey[300],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'No products found',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          itemCount: _searchResults.length,
                          itemBuilder: (context, index) {
                            return _buildProductListItem(_searchResults[index]);
                          },
                        )
                  : _buildPopularSearches(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductListItem(Product product) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            product.image,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.image, size: 40, color: Colors.grey);
            },
          ),
        ),
        title: Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.star, size: 16, color: Colors.amber[700]),
                const SizedBox(width: 4),
                Text(
                  '${product.rating} (${product.reviewCount})',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              product.formattedPrice,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildPopularSearches() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Popular Searches',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSearchChip('Running Shoes'),
                _buildSearchChip('Air Max'),
                _buildSearchChip('Basketball'),
                _buildSearchChip('Casual'),
                _buildSearchChip('Sports'),
                _buildSearchChip('Nike'),
                _buildSearchChip('Boost'),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Recent Searches',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            _buildRecentSearchItem('Air Jordan 1'),
            _buildRecentSearchItem('Nike Air Max 97'),
            _buildRecentSearchItem('Ultraboost'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchChip(String label) {
    return GestureDetector(
      onTap: () {
        _searchController.text = label;
        _performSearch(label);
      },
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.grey[100],
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      ),
    );
  }

  Widget _buildRecentSearchItem(String text) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.history, color: Colors.grey[600]),
      title: Text(text),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
      onTap: () {
        _searchController.text = text;
        _performSearch(text);
      },
    );
  }
}


import 'package:flutter/material.dart';
import 'package:grocery_store/main.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onSubmitted;

  const CustomSearchBar({
    Key? key,
    required this.controller,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: TextField(
        controller: controller,
        onSubmitted: (_) => onSubmitted?.call(),
        decoration: const InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: kLightGreen,
          ),
        ),
      ),
    );
  }
}

// Usage
class MyPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSearchBar(
              controller: _searchController,
              onSubmitted: () {
                // Handle search submission
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform search using _searchController.text
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}

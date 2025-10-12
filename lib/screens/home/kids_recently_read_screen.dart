import 'package:flutter/material.dart';

class KidsRecentlyReadScreen extends StatelessWidget {
  const KidsRecentlyReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final books = [
      {"title": "The Giggle Garden", "image": "assets/images/book3.png"},
      {"title": "Sorcerer’s Steed", "image": "assets/images/book4.png"},
      {"title": "The Giggle Garden", "image": "assets/images/book3.png"},
      {"title": "Sorcerer’s Steed", "image": "assets/images/book4.png"},
    ];

    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Kids Recently Read", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: books.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final book = books[index];
            return Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(book["image"]!, height: 140, fit: BoxFit.cover),
                ),
                const SizedBox(height: 8),
                Text(
                  book["title"]!,
                  style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SelectRoleScreen extends StatefulWidget {
  const SelectRoleScreen({super.key});

  @override
  State<SelectRoleScreen> createState() => _SelectRoleScreenState();
}

class _SelectRoleScreenState extends State<SelectRoleScreen> {
  int selectedIndex = -1;

  final List<Map<String, String>> roles = [
    {"title": "Father", "image": "assets/images/father.png"},
    {"title": "Mother", "image": "assets/images/mother.png"},
    {"title": "Guardian", "image": "assets/images/guardian.png"},
    {"title": "Others", "image": "assets/images/others.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home.png"), // your bg
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              "Select Role",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 100),

            // Role Grid
            SizedBox(
              height: 400,
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                itemCount: roles.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final role = roles[index];
                  final isSelected = index == selectedIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedIndex = index);
                    },
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Image.asset(
                              role["image"]!,
                              height: 137.55,
                              width: 122,
                              fit: BoxFit.contain,
                            ),
                            if (isSelected)
                              Positioned(
                                top: 15,
                                child: Image.asset(
                                  'assets/icons/select.png',
                                  height: 27,
                                  width: 27,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          role["title"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Continue Button
            GestureDetector(
              onTap: () {
                if (selectedIndex != -1) {
                  // handle continue
                }
              },
              child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 55,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/cont-big-btn.png",
                    ), // your icy button
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

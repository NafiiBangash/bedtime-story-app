import 'package:flutter/material.dart';

class StoryDetailPage extends StatelessWidget {
  const StoryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C3AA9), // blue background
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top image section
            Stack(
              children: [
                Container(
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/story_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: const Icon(Icons.volume_up_rounded,
                        color: Colors.white, size: 20),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "The Giggle Garden",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Jungle",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Story text container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                "Once upon a time, in a magical forest, there lived a little fairy named Lily. "
                    "Lily was very small and had delicate wings that sparkled in the sunlight. "
                    "She loved to fly around the forest and play with all the creatures that lived there.\n\n"
                    "One day, while playing with some baby rabbits, Lily heard a loud noise coming from a nearby pond.",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Audio progress section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                children: [
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: const Color(0xffFF9900),
                      inactiveTrackColor: Colors.white.withOpacity(0.3),
                      thumbColor: const Color(0xffFFCF53),
                      trackHeight: 3,
                    ),
                    child: Slider(
                      value: 3.05,
                      min: 0.0,
                      max: 4.08,
                      onChanged: (value) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "3:05",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                        Text(
                          "4:08",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Play button
            Container(
              height: 65,
              width: 65,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFCF53),
                    Color(0xffFF9900),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: const Icon(Icons.play_arrow_rounded,
                  color: Colors.white, size: 40),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

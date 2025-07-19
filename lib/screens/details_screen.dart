import 'package:flutter/material.dart';
import 'package:librix/widgets/book_rating.dart';
import 'package:librix/widgets/rounded_button.dart';
import '../consttants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .48,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * .1),
                        const BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        size: size,
                        press: () {
                          print('Chapter card pressed!');
                        },
                        name: "Money",
                        tag: "Life Is about Change",
                        chapterNumber: 1,
                      ),
                      ChapterCard(
                        size: size,
                        press: () {
                          print('Chapter card pressed!');
                        },
                        name: "Hard Work",
                        tag: "Effort is key to success in any task.",
                        chapterNumber: 2,
                      ),
                      ChapterCard(
                        size: size,
                        press: () {
                          print('Chapter card pressed!');
                        },
                        name: "Helping Others",
                        tag: "Working together benefits everyone.",
                        chapterNumber: 3,
                      ),
                      ChapterCard(
                        size: size,
                        press: () {
                          print('Chapter card pressed!');
                        },
                        name: "Planting",
                        tag: "Winning is what matters",
                        chapterNumber: 4,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: const Color.fromARGB(255, 6, 16, 153), // make sure text is visible
                          ),
                      children: const [
                        TextSpan(
                          text: "You might also ",
                        ),
                        TextSpan(
                          text: "like…",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      SizedBox(
                        height: 180,
                         width: double.infinity,
                         ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(left: 24,top: 24, right: 150),
                            height: 160,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: const Color(0xFFFFFBF9),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                text: const TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text:
                                          "Work hard, even when no one helps. \nIn the end, your effort will bring the reward.\n",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: "Gray Venchuk",
                                      style: TextStyle(color: kLightBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              const Row(
                                children: [
                                  BookRating(score: 4.9,
                                  ),
                                  SizedBox(
                                    width: 20),
                                  Expanded(child: RoundedButton(
                                    text: "Read",
                                    verticalPadding: 10,
                                  ),
                                  ),
                                ],
                              ),

                              ],
                            ),
                          ),
                          ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            "assets/images/book-5.png",
                            width: 150,
                          fit: BoxFit.fitWidth,
                        ),
                        ),  
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;
  final Size size;

  const ChapterCard({
    Key? key,
    this.name = '',
    this.tag = '',
    this.chapterNumber = 1,
    required this.press,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 33,
            color: const Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $chapterNumber: $name\n",
                  style: const TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: press,
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "The Little ",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Red Hen",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "If you don't sow seed, don't expect bread. The story teaches us to work hard and help others.",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.favorite_border),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        const SizedBox(height: 4),
                        const BookRating(score: 4.9),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.jpg",
          height: 200,
        ),
      ],
    );
  }
}
